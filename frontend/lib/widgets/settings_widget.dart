import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final _newEmailController = TextEditingController();
  final _newUsernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Call getUser method to fetch user data when the widget is initialized
    context.read<UserDataSource>().getUser(context).then((user) {
      // Set initial values for the text controllers
      _newUsernameController.text = user.username;
      _newEmailController.text = user.email;
    }).catchError((error) {
      // Handle errors if any
      print('Error fetching user data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Change username and email',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 50),
        Text(
          'Username:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: _newUsernameController,
          decoration: InputDecoration(
            hintText: 'Enter your new username',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Email:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: _newEmailController,
          decoration: InputDecoration(
            hintText: 'Enter your new email',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Your update logic here
          },
          child: Text('Save Changes'),
        ),
      ],
    );
  }
}
