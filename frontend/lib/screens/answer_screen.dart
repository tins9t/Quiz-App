import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';


class AnswerButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String answerText;
  final VoidCallback onTap;

  const AnswerButton({
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
        margin: EdgeInsets.all(10.0),
        width: 180.0,
        height: 330.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(
              answerText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.indigo[300],
      ),
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: state.answersForCurrentQuestion.length,
              itemBuilder: (context, i) => AnswerButton(
                color: Colors.blue, // Replace with your color logic
                iconData: Icons.square, // Replace with your icon logic
                answerText: state.answersForCurrentQuestion[i].text,
                onTap: () {
                  context.read<QuizBloc>().clientWantsToAnswerQuestion(
                    state.answersForCurrentQuestion[i].id,
                    state.Username, // Replace with the actual username
                    state.roomId, // Replace with the actual room id
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
