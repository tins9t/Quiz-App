import 'package:flutter/material.dart';
import 'package:frontend/services/token_service.dart';
import 'package:frontend/widgets/privacy_settings_widget.dart';
import 'package:frontend/widgets/settings_widget.dart';
import 'package:provider/provider.dart';
import 'login_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

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
        title: const Text('Account Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: isSmallScreen ? 150 : 200,
                  color: Colors.grey[200],
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text('Settings'),
                        onTap: () {
                          setState(() {
                            _selectedOption = 'Settings';
                          });
                        },
                        selected: _selectedOption == 'Settings',
                      ),
                      ListTile(
                        title: const Text('Privacy'),
                        onTap: () {
                          setState(() {
                            _selectedOption = 'Privacy';
                          });
                        },
                        selected: _selectedOption == 'Privacy',
                      ),
                      ListTile(
                        title: const Text('Log Out'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Logout'),
                                content: const Text('Are you sure you want to logout?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.read<TokenService>().deleteToken();
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                                      );
                                    },
                                    child: const Text('Yes'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildSelectedOptionContent(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _buildSelectedOptionContent() {
    switch (_selectedOption) {
      case 'Settings':
        return const SettingsWidget();
      case 'Privacy':
        return const PrivacySettingsWidget();
      default:
        return Container();
    }
  }
}
