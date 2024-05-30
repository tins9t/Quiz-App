import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';
import 'package:frontend/models/events.dart';
import 'package:frontend/screens/quiz_victory_screen.dart';
import '../widgets/answer_button_widget.dart';

class AnswerScreen extends StatelessWidget {
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

  AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.indigo[300],
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state.scores.isNotEmpty) {
            // Navigate to VictoryScreen
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const QuizVictoryScreen()),
              );
            });
          }
          if (state.answerButtonPressed) {
            return Container();
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height / 1,
              children: List.generate(
                state.answersForCurrentQuestion.length,
                    (i) => AnswerButton(
                  color: buttonColors[i % buttonColors.length],
                  iconData: buttonIcons[i % buttonIcons.length],
                  answerText: state.answersForCurrentQuestion[i].text,
                  onTap: () {
                    context.read<QuizBloc>().clientWantsToAnswerQuestion(
                      state.answersForCurrentQuestion[i].id,
                      state.username,
                      state.roomId,
                    );
                    context.read<QuizBloc>().add(
                      ClientEvent.clientWantsToAnswerQuestion(
                        answerId: state.answersForCurrentQuestion[i].id,
                        username: state.username,
                        roomId: state.roomId,
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'You answered: ${state.answersForCurrentQuestion[i].text}'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
