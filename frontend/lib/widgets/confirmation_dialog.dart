import 'package:flutter/material.dart';

class ConfirmationDialog {
  final String title;
  final String content;
  final VoidCallback onConfirm;

  ConfirmationDialog({
    required this.title,
    required this.content,
    required this.onConfirm,
  });

  Future<void> show(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                onConfirm();
                Navigator.pop(context);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
