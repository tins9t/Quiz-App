import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  Widget _buildAnswer(Color color, IconData iconData, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: EdgeInsets.all(10.0),
        width: 180.0,
        height: 330.0,
        child: Icon(
          iconData,
          color: Colors.white,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAnswer(Colors.blue, Icons.square, () {
                  // TODO
                }),
                _buildAnswer(Colors.green, Icons.star, () {
                  // TODO
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAnswer(Colors.red, Icons.favorite, () {
                  // TODO
                }),
                _buildAnswer(Colors.orange, Icons.circle, () {
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
