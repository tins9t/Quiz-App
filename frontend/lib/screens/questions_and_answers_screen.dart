import 'package:flutter/material.dart';
import 'package:frontend/data/question_data_source.dart';
import 'package:frontend/widgets/question_field.dart';
import 'package:frontend/widgets/quiz_builder.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

class QuestionsAndAnswersScreen extends StatelessWidget {
  final String quizId;
  final bool isEditing;

  const QuestionsAndAnswersScreen({
    super.key,
    required this.quizId,
    required this.isEditing,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Text(
          isEditing ? 'Edit Quiz' : 'Create Quiz',
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
      body: QuizBuilder(
        quizId: quizId,
        isEditing: isEditing,
        builder: (context, questions, isSaving) {
          if (isSaving) return const Center(child: CircularProgressIndicator());
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < questions.length; i++)
                    QuestionField(
                        question: questions[i],
                        index: i,
                        isEditing: isEditing
                    ),
                  if (questions.length < 15)
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          QuizBuilder.of(context).addQuestion();
                        },
                        icon: const Icon(Icons.add),
                        label: const Text(
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
                  if (questions.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            QuizBuilder.of(context).saveQuiz();
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.indigo[900],
                            padding: EdgeInsets.symmetric(
                              vertical: isSmallScreen ? 12 : 16,
                              horizontal: isSmallScreen ? 20 : 24,
                            ),
                          ),
                          child: Text(
                            'Save Quiz',
                            style: TextStyle(
                              fontSize: isSmallScreen ? 16 : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
        onSave: (questions) async {
          final dataSource = context.read<QuestionDataSource>();
          if (!isEditing) {
            await dataSource.createQuestionsWithAnswers(
                questionsWithAnswers: questions);
          }
          if (isEditing) {
            dataSource.deleteQuestionsByQuizId(quizId: quizId);
            dataSource.createQuestionsWithAnswers(
                questionsWithAnswers: questions);
          }
          if (context.mounted) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
                  (route) => false,
            );
          }
        },
      ),
    );
  }
}
