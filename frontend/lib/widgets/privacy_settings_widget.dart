import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';
import '../models/entities.dart';
import '../screens/login_screen.dart';
import 'confirmation_dialog.dart';

class PrivacySettingsWidget extends StatefulWidget {
  const PrivacySettingsWidget({super.key});

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
        const Text(
          'Change Password',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 50),
        const Text(
          'New Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          obscureText: true,
          controller: _newPasswordController,
          validator: (value) {
            return _serverErrors?["NewPassword"]?[0];
          },
          decoration: const InputDecoration(
            hintText: 'Enter your new password',
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Confirm Password:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          obscureText: true,
          controller: _oldPasswordController,
          validator: (value) {
            return _serverErrors?["Password"]?[0];
          },
          decoration: const InputDecoration(
            hintText: 'Input your old password',
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            ConfirmationDialog(
              title: 'Change password',
              content: 'Are you sure you want to change your password?',
              onConfirm: () {
                try {
                  _serverErrors = null;
                  context.read<UserDataSource>().updatePassword(
                      context: context,
                      password: _oldPasswordController.value.text,
                      newPassword: _newPasswordController.value.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      content: Container(
                        padding: const EdgeInsets.all(16),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Center(
                          child: Text(
                              'Your password has succesfully been changed'),
                        ),
                      ),
                    ),
                  );
                } on ApiError catch (e) {
                  _serverErrors = e.errors;
                }
                _formKey.currentState?.validate();
              },
            ).show(context);
          },
          child: const Text('Save Changes'),
        ),
        const Spacer(), // This will push the following button to the bottom
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
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ).show(context);
          },
          child: const Text('Delete User'),
        ),
      ],
    );
  }
}

