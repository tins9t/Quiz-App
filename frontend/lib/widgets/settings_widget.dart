import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget>{
  final _newEmailController = TextEditingController();
  final _newUsernameController = TextEditingController();

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
            hintText: 'Enter your username',
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
            hintText: 'Enter your email',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            context.read<UserDataSource>().updateUser(
                context: context,
                username: _newUsernameController.value.text,
                email: _newEmailController.value.text);
          },
          child: Text('Save Changes'),
        ),
      ],
    );
  }
}
