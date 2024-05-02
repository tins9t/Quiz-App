import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  String _selectedOption = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
          Expanded(
            child: _buildSelectedOptionContent(),
          ),
        ],
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
    // Replace this with your settings content
    return Center(
      child: Text('Settings Content'),
    );
  }

  Widget _buildPrivacyContent() {
    // Replace this with your privacy content
    return Center(
      child: Text('Privacy Content'),
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
                // Perform logout action here
                Navigator.pop(context);
                // Navigate to login screen
                Navigator.pop(context); // Close AccountScreen
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
