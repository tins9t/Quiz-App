import 'package:flutter/material.dart';
import 'package:frontend/services/token_service.dart';
import 'package:frontend/widgets/privacy_settings_widget.dart';
import 'package:frontend/widgets/settings_widget.dart';
import 'package:provider/provider.dart';
import '../widgets/confirmation_dialog.dart';
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
      ),
      body: Center(
        child: Container(
          width: isSmallScreen ? width : 600,
          height: isSmallScreen ? null : height / 2 + 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.indigo[300]!, width: 5),
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
                          ConfirmationDialog(
                            title: 'Logout',
                            content:
                            'Are you sure you want to logout?',
                            onConfirm: () {
                              context.read<TokenService>().deleteToken();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                          ).show(context);
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
        return SettingsWidget();
      case 'Privacy':
        return PrivacySettingsWidget();
      default:
        return Container();
    }
  }
}
