import 'package:flutter/material.dart';
import 'quiz_builder.dart';

class AnswerField extends StatelessWidget {
  const AnswerField({Key? key, required this.answer, required this.index, required this.isEditing}) : super(key: key);

  final EditingAnswer answer;
  final int index;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: answer.correct,
            onChanged: (isChecked) {
              QuizBuilder.of(context).setCorrect(answer, isChecked!);
            },
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                answer.answer = value;
              },
              initialValue: isEditing ? answer.answer : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.indigo[900]!,
                  ),
                ),
                hintText: 'Enter answer ${index + 1}',
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