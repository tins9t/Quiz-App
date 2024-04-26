import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedOption = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Row(
          children: [
            Text(
              'Quiz App !',
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'LongToday', fontSize: 25, color: Colors.indigo[900]),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement Create button functionality
              },
              child: Text('Create'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigo[900],
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // TODO: Implement user icon functionality
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20), // Add space
                ListTile(
                  leading: Icon(Icons.home, color: Colors.indigo),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedOption = 'Home';
                    });
                  },
                ),
                SizedBox(height: 20), // Add space
                ListTile(
                  leading: Icon(Icons.explore, color: Colors.indigo),
                  title: Text(
                    'Discover',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedOption = 'Discover';
                    });
                  },
                ),
                SizedBox(height: 20), // Add space
                ListTile(
                  leading: Icon(Icons.library_books, color: Colors.indigo),
                  title: Text(
                    'Library',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedOption = 'Library';
                    });
                  },
                ),
                SizedBox(height: 20), // Add space
                ListTile(
                  leading: Icon(Icons.assignment, color: Colors.indigo),
                  title: Text(
                    'Sessions',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedOption = 'Sessions';
                    });
                  },
                ),
                // Add spacing
                SizedBox(height: 20), // Add space between menu items and Lottie animation
                Expanded(
                  child: SizedBox(), // Add Expanded to push items to the bottom
                ),
                // Add Lottie animation to the bottom of the menu bar
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Center(
                    child: Lottie.asset(
                      'assets/animations/writing.json',
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                      repeat: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(),
          Expanded(
            child: _buildSelectedOptionWidget(),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedOptionWidget() {
    switch (_selectedOption) {
      case 'Discover':
        return Container(); // Placeholder until DiscoverScreen is implemented
      case 'Library':
        return Container(); // Placeholder until LibraryScreen is implemented
      case 'Sessions':
        return Container(); // Placeholder until SessionsScreen is implemented
      default:
        return Container(); // Placeholder until HomeContent is implemented
    }
  }
}










