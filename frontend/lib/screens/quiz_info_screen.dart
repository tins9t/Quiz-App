import 'package:flutter/material.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/screens/quiz_setup_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';

class QuizInfoScreen extends StatelessWidget {
  final Quiz quiz;

  const QuizInfoScreen({required this.quiz, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.indigo[300],
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: TextStyle(fontSize: 16),
          ),
        ),
      ),
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quiz.name,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 8),
                Text(
                  'Time Created: ${quiz.timeCreated}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 8),
                FutureBuilder<User>(
                  future: context.read<UserDataSource>().getUserById(userId: quiz.userId!),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
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
                SizedBox(height: 8),
                Text(
                  quiz.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 16),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Lottie.asset('assets/animations/people.json'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizSetupScreen(
                          quizId: quiz.id!, // Pass the quizId to the QuizSetupScreen
                          username: 'username', // Replace 'username' with the actual username
                        ),
                      ),
                    );
                  },
                  child: Text('Start Quiz'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
