import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';
import '../models/entities.dart';
import 'confirmation_dialog.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final _newEmailController = TextEditingController();
  final _newUsernameController = TextEditingController();

  Map<String, List<String>>? _serverErrors;

  @override
  void initState() {
    super.initState();
    context.read<UserDataSource>().getUser(context).then((user) {
      _newUsernameController.text = user.username;
      _newEmailController.text = user.email;
    }).catchError((error) {
      print('Error fetching user data: $error');
    });
  }

  final _formKey = GlobalKey<FormState>();

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
          validator: (value) {
            return _serverErrors?["Username"]?[0];
          },
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
          validator: (value) {
            return _serverErrors?["Email"]?[0];
          },
          decoration: InputDecoration(
            hintText: 'Enter your new email',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            ConfirmationDialog(
              title: 'Change credentials',
              content: 'Are you sure you want to save your changes?',
              onConfirm: () {
                context.read<UserDataSource>().updateUser(
                    context: context,
                    username: _newUsernameController.value.text,
                    email: _newEmailController.value.text);
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
                        child: Text('Your changes have succesfully been saved'),
                      ),
                    ),
                  ),
                );
              },
            ).show(context);
          },
          child: Text('Save Changes'),
        ),
      ],
    );
  }
}
