import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'quiz_screen.dart';

class LoadingQuestionScreen extends StatefulWidget {
  @override
  _LoadingQuestionScreenState createState() => _LoadingQuestionScreenState();
}

class _LoadingQuestionScreenState extends State<LoadingQuestionScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => QuizScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
            Text(
              'What is your question?',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Lottie.asset(
              'assets/animations/question.json',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20.0),
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return LinearProgressIndicator(
                  minHeight: 8,
                  color: Colors.indigo[300],
                  value: _animationController.value,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
