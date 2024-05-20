import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/quiz_bloc.dart';
import '../bloc/quiz_state.dart';

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
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          print('Rebuilding QuizScreen with state: $state');
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    state.currentQuestion.text, // Display the current question
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                SizedBox(height: 400.0),
                for (var answer in state.answersForCurrentQuestion) // Display each answer
                  _buildOption(Colors.blue, Icons.square, answer.text, () {
                    // TODO: Handle answer selection
                  }),
              ],
            ),
          );
        },
      ),
    );
  }
}
