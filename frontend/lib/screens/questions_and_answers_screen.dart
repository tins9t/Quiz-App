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
    Key? key,
    required this.quizId,
    required this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Text(
          isEditing ? 'Edit Quiz' : 'Create Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width < 600 ? 20 : 25,
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
          if (isSaving) return Center(child: CircularProgressIndicator());
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < questions.length; i++)
                    QuestionField(question: questions[i], index: i, isEditing: isEditing),
                  if (questions.length < 15)
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          QuizBuilder.of(context).addQuestion();
                        },
                        icon: Icon(Icons.add),
                        label: Text(
                          'Add Another Question',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.width < 600 ? 12 : 16,
                            horizontal: MediaQuery.of(context).size.width < 600 ? 20 : 24,
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
                          child: Text(
                            'Save Quiz',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width < 600 ? 16 : null,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.indigo[900],
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.width < 600 ? 12 : 16,
                              horizontal: MediaQuery.of(context).size.width < 600 ? 20 : 24,
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
          if(!isEditing){
          await dataSource.createQuestionsWithAnswers(questionsWithAnswers: questions);}
          if(isEditing){
            dataSource.deleteQuestionsByQuizId(quizId: quizId);
            dataSource.createQuestionsWithAnswers(questionsWithAnswers: questions);
          }
          if (context.mounted) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
                  (route) => false,
            );
          }
        },
      ),
    );
  }
}
