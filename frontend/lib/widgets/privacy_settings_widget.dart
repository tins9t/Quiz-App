import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';
import 'confirmation_dialog.dart';

class PrivacySettingsWidget extends StatefulWidget {
  @override
  _PrivacySettingsWidgetState createState() => _PrivacySettingsWidgetState();
}

class _PrivacySettingsWidgetState extends State<PrivacySettingsWidget>{
  final _newPasswordController = TextEditingController();
  final _oldPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Change Password',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 50),
        Text(
          'New Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          obscureText: true,
          controller: _newPasswordController,
          decoration: InputDecoration(
            hintText: 'Enter your new password',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Confirm Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          obscureText: true,
          controller: _oldPasswordController,
          decoration: InputDecoration(
            hintText: 'Input your old password',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            context.read<UserDataSource>().updatePassword(
                context: context,
                password: _oldPasswordController.value.text,
                newPassword: _newPasswordController.value.text);
          },
          child: Text('Save Changes'),
        ),
        SizedBox(height: 200),
        ElevatedButton(
          onPressed: () {
            ConfirmationDialog(
              title: 'Delete',
              content:
              'Are you sure you want to delete your user? Your data will not be saved.',
              onConfirm: () {
                context.read<UserDataSource>().deleteUser(context: context);
                Navigator.pop(context);
              },
            ).show(context);
          },
          child: Text('Delete User'),
        ),
      ],
    );
  }
}