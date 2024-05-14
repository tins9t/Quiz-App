import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/manage_quiz_cubit.dart';
import '../models/entities.dart';
import 'AnswerField.dart';

class QuestionField extends StatefulWidget {
  const QuestionField(this.question, this.index, this.isSmallScreen, {super.key});
  final QuestionWithAnswers question;final int index; final bool isSmallScreen;
  @override
  State<QuestionField> createState() => _QuestionFieldState();
}

class _QuestionFieldState extends State<QuestionField> {

  late TextEditingController controller;

 @override
  void initState() {
   controller = TextEditingController(text: widget.question.question.text);
   super.initState();
 }

 @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

      final answers = widget.question.answers;
      final bool hasMinusButton = answers.length > 2;
      final bool hasPlusButton = answers.length < 4;

      return Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //'Question ${widget.index + 1}',
                "Question ${widget.question.question.text}",
                style: TextStyle(
                  fontSize: widget.isSmallScreen ? 16 : 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: controller,
                onChanged: (value) {
                  context
                      .read<ManageQuizCubit>()
                      .changeQuestionText(widget.index, value);
                },
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
                  fontSize: widget.isSmallScreen ? 16 : 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(height: 10),
              for (int i = 0; i < answers.length; i++)
                AnswerField(
                    widget.question.answers[i], widget.index, i, widget.isSmallScreen),
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
                              context
                                  .read<ManageQuizCubit>()
                                  .addAnswerToQuestion(widget.index);
                            },
                            icon: Icon(Icons.add),
                          ),
                        if (hasMinusButton)
                          IconButton(
                            onPressed: () {
                              context
                                  .read<ManageQuizCubit>()
                                  .removeAnswerFromQuestion(widget.index);
                            },
                            icon: Icon(Icons.remove),
                          ),
                      ],
                    ),
                  IconButton(
                    onPressed: () {
                      context.read<ManageQuizCubit>().removeQuestion(widget.index);
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
