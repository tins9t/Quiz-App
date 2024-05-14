import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  Widget _buildOption(Color color, IconData iconData, String answerText, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0),
          ),
          height: 100,
          width: 800,
          child: Row(
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              Expanded(
                child: Text(
                  answerText,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.indigo[300],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'What is your question?',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 400.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOption(Colors.blue, Icons.square, 'Option 1', () {
                  // TODO
                }),
                _buildOption(Colors.green, Icons.star, 'Option 2', () {
                  // TODO
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOption(Colors.red, Icons.favorite, 'Option 3', () {
                  // TODO
                }),
                _buildOption(Colors.orange, Icons.circle, 'Option 4', () {
                  // TODO
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
