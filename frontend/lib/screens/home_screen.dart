import 'package:flutter/material.dart';
import '../widgets/big_screen_widget.dart';
import '../widgets/small_screen_widget.dart';
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
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Row(
          children: [
            Text(
              'Quizilla',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isSmallScreen ? 20 : 25,
                color: Colors.indigo[900],
              ),
            ),
            Spacer(),
            // Show account circle icon
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.indigo[900],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountSettingsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: isSmallScreen
          ? SmallScreenWidget(
        selectedOption: _selectedOption,
        selectedIndex: _selectedIndex,
        onOptionSelected: (index) {
          setState(() {
            _selectedIndex = index;
            _selectedOption = [
              'Home',
              'Discover',
              'Library',
              'Join Quiz'
            ][index];
          });
        },
      )
          : BigScreenWidget(
        selectedOption: _selectedOption,
        onOptionSelected: (option) {
          setState(() {
            _selectedOption = option;
          });
        },
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          bottom: isSmallScreen ? 70 : 0,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateQuizScreen(isEditing: false),
              ),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.indigo[900],
        ),
      ),
    );
  }
}
