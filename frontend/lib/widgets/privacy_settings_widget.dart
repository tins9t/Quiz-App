import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';
import '../models/entities.dart';
import '../screens/login_screen.dart';
import 'confirmation_dialog.dart';

class PrivacySettingsWidget extends StatefulWidget {
  @override
  _PrivacySettingsWidgetState createState() => _PrivacySettingsWidgetState();
}

class _PrivacySettingsWidgetState extends State<PrivacySettingsWidget> {
  final _newPasswordController = TextEditingController();
  final _oldPasswordController = TextEditingController();

  Map<String, List<String>>? _serverErrors;
  final _formKey = GlobalKey<FormState>();

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
          validator: (value) {
            return _serverErrors?["NewPassword"]?[0];
          },
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
          validator: (value) {
            return _serverErrors?["Password"]?[0];
          },
          decoration: InputDecoration(
            hintText: 'Input your old password',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            ConfirmationDialog(
              title: 'Change password',
              content: 'Are you sure you want to change your password?',
              onConfirm: () {
                try {
                  context.read<UserDataSource>().updatePassword(
                      context: context,
                      password: _oldPasswordController.value.text,
                      newPassword: _newPasswordController.value.text);
                } on ApiError catch (e) {
                  _serverErrors = e.errors;
                }
                if (_formKey.currentState?.validate() ?? false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      content: Container(
                        padding: EdgeInsets.all(16),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                              'Your password has succesfully been changed'),
                        ),
                      ),
                    ),
                  );
                }
                _formKey.currentState?.validate();
              },
            ).show(context);
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ).show(context);
          },
          child: Text('Delete User'),
        ),
      ],
    );
  }
}
