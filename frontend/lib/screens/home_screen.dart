import 'package:flutter/material.dart';
import 'package:frontend/widgets/discover_widget.dart';
import 'package:frontend/widgets/quiz_list_widget.dart';
import 'package:frontend/widgets/user_quiz_list_widget.dart';
import 'package:lottie/lottie.dart';
import 'account_settings_screen.dart';
import 'create_quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedOption = 'Home';
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery
        .of(context)
        .size
        .width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Row(
          children: [
            Text(
              'Quiz App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isSmallScreen ? 20 : 25,
                color: Colors.indigo[900],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.indigo[900],),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => AccountSettingsScreen()),);
              },
            ),
          ],
        ),
      ),
      body: _buildMenuBar(isSmallScreen),
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          bottom: isSmallScreen ? 70 : 0,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateQuizScreen()),
            );
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.indigo[900],
        ),
      ),
    );
  }

  Widget _buildMenuBar(bool isSmallScreen) {
    if (isSmallScreen) {
      return _buildSmallScreenLayout();
    } else {
      return _buildLargeScreenLayout();
    }
  }

  Widget _buildLargeScreenLayout() {
    return Row(
      children: [
        Container(
          width: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                        Icons.home, color: Colors.indigo, size: 20,),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Home';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.explore, color: Colors.indigo, size: 20),
                      title: Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Discover';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.library_books, color: Colors.indigo, size: 20),
                      title: Text(
                        'Library',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Library';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.assignment, color: Colors.indigo, size: 20),
                      title: Text(
                        'Sessions',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Sessions';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Center(
                  child: Lottie.asset(
                    'assets/animations/writing.json',
                    fit: BoxFit.cover,
                    repeat: false,
                    height: 130,
                    width: 130,
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
    );
  }


  Widget _buildSmallScreenLayout() {
    return Scaffold(
      body: _buildSelectedOptionWidget(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo[900],),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.indigo[900]),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.indigo[900]),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.indigo[900]),
            label: 'Sessions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[900],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _selectedOption =
            ['Home', 'Discover', 'Library', 'Sessions'][index];
          });
        },
      ),
    );
  }


  Widget _buildSelectedOptionWidget() {
    switch (_selectedOption) {
      case 'Discover':
        print("Discover");
        return DiscoverWidget();
      case 'Library':
        print("Library");
        return UserQuizListWidget();
      case 'Sessions':
        print("Sessions");
        return Container(); // TODO
      default:
        print("Home");
        return QuizListWidget();
    }
  }
}