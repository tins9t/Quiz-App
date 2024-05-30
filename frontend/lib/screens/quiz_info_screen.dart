import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/screens/quiz_setup_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';

class QuizInfoScreen extends StatefulWidget {
  final Quiz quiz;

  const QuizInfoScreen({required this.quiz, super.key});

  @override
  _QuizInfoScreenState createState() => _QuizInfoScreenState();
}

class _QuizInfoScreenState extends State<QuizInfoScreen> {
  bool showDetails = false;
  List<QuestionWithAnswers> questionsWithAnswers = [];

  @override
  void initState() {
    super.initState();
    fetchQuestionsWithAnswers();
  }

  Future<void> fetchQuestionsWithAnswers() async {
    try {
      List<QuestionWithAnswers> data = await context
          .read<QuizDataSource>()
          .getQuestionsWithAnswersByQuizId(quizId: widget.quiz.id!);
      setState(() {
        questionsWithAnswers = data;
        print('Questions with answers: $questionsWithAnswers');
      });
    } catch (error) {
      print('Error fetching questions with answers: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = widget.quiz.timeCreated.toString().substring(0, 11);

    return Theme(
      data: ThemeData(
        primaryColor: Colors.indigo[300],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueAccent[100],
              expandedHeight: 250.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.quiz.name,
                  style: const TextStyle(color: Colors.white),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/quiz.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black54],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.5, 1],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time Created: $formattedTime',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 8),
                          FutureBuilder<User>(
                            future: context
                                .read<UserDataSource>()
                                .getUserById(userId: widget.quiz.userId!),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Text(
                                  'By: Loading...',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                );
                              } else if (snapshot.hasError) {
                                return Text(
                                  'By: Unknown',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                );
                              } else if (snapshot.hasData) {
                                final user = snapshot.data!;
                                return Text(
                                  'By: ${user.username}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                );
                              } else {
                                return Text(
                                  'By: Unknown',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          Text(
                            widget.quiz.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Lottie.asset('assets/animations/top.json'),
                          ),
                          const SizedBox(height: 20),
                          if (questionsWithAnswers.isNotEmpty)
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ExpansionTile(
                                title: const Text('Show Questions and Answers'),
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: questionsWithAnswers
                                          .expand((qa) => [
                                                ListTile(
                                                  title: Text(
                                                    qa.question.text,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  subtitle: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: qa.answers
                                                        .map((answer) {
                                                      return Text(
                                                        answer.text,
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                                const Divider(),
                                              ])
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (questionsWithAnswers.isEmpty)
                            const Text(
                              'No questions available for this quiz.',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blueAccent,
                          ),
                          onPressed: () {
                            if (questionsWithAnswers.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('You cannot start a quiz without any questions!'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizSetupScreen(
                                    quizId: widget.quiz.id!,
                                    // Pass the quizId to the QuizSetupScreen
                                    username:
                                        'username', // Replace 'username' with the actual username
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text('Start Quiz'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
