import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/manage_quiz_cubit.dart';
import '../models/entities.dart';

class AnswerField extends StatelessWidget {
  const AnswerField(this.answer, this.questionIndex, this.answerIndex, this.isSmallScreen);
  final Answer answer;
  final int questionIndex;
  final int answerIndex;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: answer.correct,
            onChanged: (isChecked) {
              context.read<ManageQuizCubit>().changeAnswer(
                  questionIndex, answerIndex,
                  correct: isChecked ?? false);
            },
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                context
                    .read<ManageQuizCubit>()
                    .changeAnswer(questionIndex, answerIndex, text: value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.indigo[900]!,
                  ),
                ),
                hintText: 'Enter answer ${answerIndex + 1}',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
