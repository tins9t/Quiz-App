import 'package:flutter/material.dart';
import 'package:frontend/bloc/quiz_bloc.dart';
import 'package:frontend/screens/answer_screen.dart';
import 'package:provider/provider.dart';

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
    _usernameController = TextEditingController(
      text: usernameInState == 'Host' ? '' : usernameInState,
    ); // Set initial value to username in state if it's not 'Host'

    // Add listeners to the controllers
    _roomIdController.addListener(_updateButtonState);
    _usernameController.addListener(_updateButtonState);

    // Listen for changes in QuizBloc state
    context.read<QuizBloc>().stream.listen((state) {
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
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Username does not exist in the users list'),
            duration: Duration(seconds: 2),
          ),
        );
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () async {
                      context.read<QuizBloc>().clientWantsToEnterRoom(
                            int.parse(_roomIdController.text.trim()),
                            _usernameController.text,
                          );
                      context.read<QuizBloc>().clientWantsToEnterRoom(
                            int.parse(_roomIdController.text),
                            _usernameController.text,
                          );
                    }
                  : null, // Disable button if fields are not filled out
              child: const Text('Join Quiz'),
            ),
          ],
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
