import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/manage_quiz_cubit.dart';
import 'package:frontend/widgets/QuestionField.dart';
import '../bloc/manage_quiz_state.dart';
import 'home_screen.dart';

class CreateQuestionsAndAnswersScreen extends StatelessWidget {
  CreateQuestionsAndAnswersScreen({required this.quizId});

  final String quizId;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Text(
          'Create Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isSmallScreen ? 20 : 25,
            color: Colors.indigo[900],
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigo[900]),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: BlocProvider<ManageQuizCubit>(
        create: (context) => ManageQuizCubit(quizId),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocBuilder<ManageQuizCubit, ManageQuizState>(
              builder: (context, state) {
                final questions = state.questionWithAnswers;
                final bool canSaveQuiz = state.questionWithAnswers.isNotEmpty;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < questions.length; i++)
                      QuestionField(questions[i], i, isSmallScreen),
                    if (questions.length < 15)
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.read<ManageQuizCubit>().addQuestion();
                          },
                          icon: Icon(Icons.add),
                          label: Text(
                            'Add Another Question',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: isSmallScreen ? 12 : 16,
                              horizontal: isSmallScreen ? 20 : 24,
                            ),
                            backgroundColor: Colors.indigo[900],
                          ),
                        ),
                      ),
                    if (canSaveQuiz)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _saveQuizAndNavigateToHomeScreen(context);
                            },
                            child: Text(
                              'Save Quiz',
                              style: TextStyle(
                                  fontSize: isSmallScreen ? 16 : null),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(
                                vertical: isSmallScreen ? 12 : 16,
                                horizontal: isSmallScreen ? 20 : 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _saveQuizAndNavigateToHomeScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
        (route) => false,
      );
    });
  }
}
