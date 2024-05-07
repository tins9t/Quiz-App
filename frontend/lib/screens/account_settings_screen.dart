import 'package:flutter/material.dart';

import 'login_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  String _selectedOption = 'Settings';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    bool isSmallScreen = width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300]!,
        title: Text('Account Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: isSmallScreen ? width : 600,
          height: isSmallScreen ? null : height / 2 + 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.indigo[300]!, width: 5), // Add border
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: isSmallScreen ? 150 : 200,
                  color: Colors.grey[200],
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('Settings'),
                        onTap: () {
                          setState(() {
                            _selectedOption = 'Settings';
                          });
                        },
                        selected: _selectedOption == 'Settings',
                      ),
                      ListTile(
                        title: Text('Privacy'),
                        onTap: () {
                          setState(() {
                            _selectedOption = 'Privacy';
                          });
                        },
                        selected: _selectedOption == 'Privacy',
                      ),
                      ListTile(
                        title: Text('Log Out'),
                        onTap: () {
                          _showLogoutConfirmationDialog(context);
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: _buildSelectedOptionContent(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedOptionContent() {
    switch (_selectedOption) {
      case 'Settings':
        return _buildSettingsContent();
      case 'Privacy':
        return _buildPrivacyContent();
      default:
        return Container();
    }
  }

  Widget _buildSettingsContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your username',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Email:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
          ),
        ),
      ],
    );
  }

  Widget _buildPrivacyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter your new password',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Confirm Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Confirm your new password',
          ),
        ),
        SizedBox(height: 100),
        ElevatedButton(
          onPressed: () {
            _showDeleteUserConfirmationDialog(context);
          },
          child: Text('Delete User'),
        ),
      ],
    );
  }

  void _showDeleteUserConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete'),
          content: Text('Are you sure you want to delete your user? Your data will not be saved.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }


  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
