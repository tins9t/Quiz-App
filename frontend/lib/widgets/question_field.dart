import 'package:flutter/material.dart';
import 'answer_field.dart';
import 'quiz_builder.dart';

class QuestionField extends StatelessWidget {
  const QuestionField({Key? key, required this.question, required this.index, required this.isEditing}) : super(key: key);

  final EditingQuestion question;
  final int index;
  final bool isEditing;


  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final answerCount = question.answers.length;
    final bool hasMinusButton = answerCount > 2;
    final bool hasPlusButton = answerCount < 4;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${index + 1}',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                question.question = value;
              },
              initialValue: isEditing ? question.question : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.indigo[900]!),
                ),
                hintText: 'Enter question',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Answers',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            SizedBox(height: 10),
            for (int i = 0; i < question.answers.length; i++)
              AnswerField(answer: question.answers[i], index: i, isEditing: isEditing),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (hasPlusButton || hasMinusButton)
                  Row(
                    children: [
                      if (hasPlusButton)
                        IconButton(
                          onPressed: () {
                            QuizBuilder.of(context).addAnswer(index);
                          },
                          icon: Icon(Icons.add),
                        ),
                      if (hasMinusButton)
                        IconButton(
                          onPressed: () {
                            QuizBuilder.of(context).removeAnswer(index);
                          },
                          icon: Icon(Icons.remove),
                        ),
                    ],
                  ),
                IconButton(
                  onPressed: () {
                    QuizBuilder.of(context).removeQuestion(index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
