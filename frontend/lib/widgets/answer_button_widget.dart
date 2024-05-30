import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String answerText;
  final VoidCallback onTap;

  const AnswerButton({
    super.key,
    required this.color,
    required this.iconData,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: const EdgeInsets.all(10.0),
        width: 180.0,
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(
              answerText,
              textAlign: TextAlign.center, // Add this line
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}