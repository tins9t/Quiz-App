import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';
import 'package:frontend/models/events.dart';
import 'package:frontend/screens/login_screen.dart';


class QuizVictoryScreen extends StatelessWidget {
  const QuizVictoryScreen({super.key});

  void printUserNotFound(QuizState quizState) {
    Future.microtask(() => print('State username: ${quizState.username}, Scores list: ${quizState.scores}'));
  }

  @override
  Widget build(BuildContext context) {
    // Get the QuizState
    final quizState = context.read<QuizBloc>().state;

    // Get the position of the user in the scores list
    final position = quizState.scores.keys.toList().indexOf(quizState.username) + 1;

    // Check if the user is in the scores list
    if (position == 0) {
      printUserNotFound(quizState);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Victory Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Check if the user is in the scores list
            if (position == 0)
              const Text(
                'Error: User not found in the scores list',
                style: TextStyle(fontSize: 24),
              ),
            // Use a ternary operator to conditionally render the widgets
            position == 0
                ? Container()
                : Column(
              children: [
                // Check if the user is in the top 3
                if (position <= 3)
                  Text(
                    'Congratulations! You are in $position place !',
                    style: const TextStyle(fontSize: 24, color: Colors.green),
                  )
                else
                  Text(
                    'You are in $position. place. Git gud ',
                    style: const TextStyle(fontSize: 24),
                  ),
                const SizedBox(height: 20),
                Text(
                  'Your score: ${quizState.scores[quizState.username]}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<QuizBloc>().add(ClientWantsToResetQuiz( roomId: context.read<QuizBloc>().state.roomId));
                    // Call the leaveRoom event
                    context.read<QuizBloc>().add(ClientEvent.clientWantsToKickUserFromRoom(
                      username: quizState.username,
                      roomId: quizState.roomId,
                    )); // Navigate to LoginScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Go to Login Screen'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}