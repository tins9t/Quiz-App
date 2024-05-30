import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/models/events.dart';
import 'package:frontend/screens/home_screen.dart';

import 'package:lottie/lottie.dart';

import '../bloc/quiz_state.dart';

class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  _ScoreboardScreenState createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  Timer? flickerTimer;
  Timer? stopTimer;
  Random random = Random();
  int randomScore = 0;

  int getRandomScore() {
    return random.nextInt(9999);
  }

  @override
  void initState() {
    super.initState();

    flickerTimer =
        Timer.periodic(const Duration(milliseconds: 50), _updatePoints);

    _createQuizSession();
    flickerTimer = Timer.periodic(const Duration(milliseconds: 50), _updatePoints);
    stopTimer = Timer(const Duration(seconds: 3), _stopFlicker);
  }

  Future<void> _createQuizSession() async {
    String sessionId = await context.read<QuizBloc>().quizDataSource.createQuizSession(context.read<QuizBloc>().state.quizId);
    print('Quiz session created with ID: $sessionId');
  }

  @override
  void dispose() {
    flickerTimer?.cancel();
    stopTimer?.cancel();
    super.dispose();
  }

  void _updatePoints(Timer timer) {
    setState(() {
      randomScore = getRandomScore();
    });
  }

  void _stopFlicker() {
    flickerTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Scoreboard',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<QuizBloc, QuizState>(
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.scores.length,
                      itemBuilder: (context, index) {
                        final playerUsername =
                            state.scores.keys.elementAt(index);
                        final playerScore =
                            state.scores.values.elementAt(index);
                        final backgroundColor = index.isEven
                            ? Colors.orange[50]
                            : Colors.lightBlueAccent[50];
                        return Container(
                          color: backgroundColor,
                          child: ListTile(
                            title: Text(
                              playerUsername,
                              style: const TextStyle(fontSize: 18.0),
                            ),
                            trailing: Text(
                              flickerTimer?.isActive ?? false
                                  ? '$randomScore points'
                                  : '$playerScore points',
                              style: const TextStyle(fontSize: 18.0),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Lottie.asset('assets/animations/top.json'),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              // Trigger the KickAllUsersEvent
              context.read<QuizBloc>().add(ClientWantsToResetQuiz(
                  roomId: context.read<QuizBloc>().state.roomId));
              context.read<QuizBloc>().add(
                  ClientEvent.clientWantsToKickAllUsers(
                      roomId: context.read<QuizBloc>().state.roomId));
              // Navigate to HomePage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Text('End Quiz'),
          ),
        ],
      ),
    );
  }
}
