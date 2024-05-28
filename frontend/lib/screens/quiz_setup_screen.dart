import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';
import 'package:frontend/screens/quiz_screen.dart';

class QuizSetupScreen extends StatefulWidget {
  final String quizId;
  final String username;

  const QuizSetupScreen(
      {super.key, required this.quizId, required this.username});

  @override
  _QuizSetupScreenState createState() => _QuizSetupScreenState();
}

class _QuizSetupScreenState extends State<QuizSetupScreen> {
  late Timer _timer;
  int _start = 60;
  late int roomId;

  @override
  void initState() {
    super.initState();
    roomId = 100000 + Random().nextInt(900000); // Generate a random 6-digit number
    print('Room ID: $roomId'); // Add this line
    startTimer();
    context.read<QuizBloc>().clientWantsToSetupQuiz(
      widget.quizId,
      widget.username,
      roomId,
      _start,
    );
    context
        .read<QuizBloc>()
        .clientWantsToEnterRoom(roomId, "Host"); // Add this line
    print("Host joined room: $roomId");
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_start == 1) {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuizScreen()),
        );
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Format the roomId to include a space after every 3 digits
    String formattedRoomId = roomId
        .toString()
        .replaceAllMapped(RegExp(r".{3}"), (match) => "${match.group(0)} ");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Setup', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        leading: BackButton(
          onPressed: () {
            context.read<QuizBloc>().clientWantsToKickAllUsers(roomId);
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Room ID: $formattedRoomId',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight:
                        FontWeight.bold), // Increase the font size to 30
              ),
              const SizedBox(height: 10),
              Text(
                '$_start',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BlocBuilder<QuizBloc, QuizState>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.users.where((user) => user != state.username).length, // Filter out the username from the users list
                    itemBuilder: (context, index) {
                      String user = state.users.where((user) => user != state.username).toList()[index]; // Get the user at the current index after filtering
                      return Card(
                        child: ListTile(
                          title: Text(user, style: const TextStyle(fontSize: 18)),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              context.read<QuizBloc>().clientWantsToKickUserFromRoom(roomId, user);
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<QuizBloc>().clientWantsToStartQuiz(
                        widget.username,
                        widget.quizId,
                        roomId,
                      );
                  setState(() {
                    _start = 3; // Set the timer to 3 seconds
                  });
                },
                child: const Text('Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
