import 'package:flutter/material.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/screens/quiz_answer_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../models/events.dart';

class QuizJoiningScreen extends StatefulWidget {
  const QuizJoiningScreen({super.key});

  @override
  _QuizJoiningScreenState createState() => _QuizJoiningScreenState();
}

class _QuizJoiningScreenState extends State<QuizJoiningScreen> {
  late TextEditingController _roomIdController;
  late TextEditingController _usernameController;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    String usernameInState = context.read<QuizBloc>().state.username;
    _roomIdController = TextEditingController();
    context.read<QuizBloc>().add(ClientWantsToResetQuiz( roomId: context.read<QuizBloc>().state.roomId));
    _usernameController = TextEditingController(
      text: usernameInState == 'Host' ? '' : usernameInState,
    ); // Set initial value to username in state if it's not 'Host'

    // Add listeners to the controllers
    _roomIdController.addListener(_updateButtonState);
    _usernameController.addListener(_updateButtonState);


    // Listen for changes in QuizBloc state
    context.read<QuizBloc>().stream.listen((state) async {
      if (context
          .read<QuizBloc>()
          .state
          .users
          .contains(_usernameController.text)) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnswerScreen()),
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 1000));
        if (mounted) {
          // Check if the current route is QuizJoiningScreen
          bool isCurrentRouteJoiningScreen =
              ModalRoute.of(context)?.settings.name == '/QuizJoiningScreen';
          if (isCurrentRouteJoiningScreen) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Wrong room id!.'),
                duration: Duration(seconds: 2),
              ),
            );
          }
        }
      }
    });
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _roomIdController.text.isNotEmpty &&
          _usernameController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _roomIdController,
                decoration: const InputDecoration(
                  labelText: 'Room ID',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: _isButtonEnabled
                    ? () async {
                  if (context.read<QuizBloc>().state.users.contains(_usernameController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Username already exists. Please enter a unique username.'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else {
                    context.read<QuizBloc>().clientWantsToEnterRoom(
                      int.parse(_roomIdController.text.trim()),
                      _usernameController.text,
                    );
                    context.read<QuizBloc>().clientWantsToEnterRoom(
                      int.parse(_roomIdController.text),
                      _usernameController.text,
                    );
                  }
                }
                    : null, // Disable button if fields are not filled out
                child: const Text('Join Quiz'),
              ),
              const SizedBox(height: 80),
              Center(
                child: Lottie.asset('assets/animations/question.json',
                    fit: BoxFit.cover, height: 300, width: 300),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _roomIdController.dispose();
    _usernameController.dispose();
    super.dispose();
  }
}
