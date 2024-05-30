import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/screens/quiz_scoreboard_screen.dart';
import '../bloc/quiz_bloc.dart';
import '../bloc/quiz_state.dart';

class QuizScreen extends StatelessWidget {
  final List<Color> buttonColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow
  ];
  final List<IconData> buttonIcons = [
    Icons.square,
    Icons.favorite,
    Icons.circle,
    Icons.star
  ];

  QuizScreen({super.key});

  Stream<int> countdown(int milliseconds) {
    int seconds = milliseconds ~/ 1000;
    return Stream.periodic(const Duration(seconds: 1), (i) => seconds - i - 1).take(
        seconds);
  }

  Widget _buildOption(Color color, IconData iconData, String answerText,
      VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        margin: const EdgeInsets.all(10.0),
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
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.indigo[300],
          automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<QuizBloc, QuizState>(
        listener: (context, state) {
          if (state.showScore) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ScoreboardScreen()),
            );
          }
        },
        builder: (context, state) {
          print('Rebuilding QuizScreen with state: $state');
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    state.currentQuestion.text, // Display the current question
                    style: const TextStyle(fontSize: 24.0),
                  ),
                ),
                Text(
                  'Question ${state.currentQuestionIndex} of ${state.totalQuestions}',
                  style: const TextStyle(fontSize: 18.0),
                ),
                StreamBuilder<int>(
                  stream: countdown(state.timeRemaining),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Text('Time remaining: ${snapshot.data} seconds');
                    }
                  },
                ),
                Expanded(
                  child: ListView(
                    children: [
                      for (var i = 0; i < state.answersForCurrentQuestion
                          .length; i++) // Display each answer
                        _buildOption(
                            buttonColors[i % buttonColors.length],
                            buttonIcons[i % buttonIcons.length],
                            state.answersForCurrentQuestion[i].text,
                                () {}
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}