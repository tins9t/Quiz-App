import 'package:flutter/material.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/screens/create_quiz_screen.dart';
import 'package:frontend/screens/home_screen.dart';
import 'package:frontend/screens/register_screen.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {

  String baseUrl = kIsWeb ? "http://localhost:5185" : "http://10.0.2.2:5185";

runApp(
      MultiProvider(
        providers: [
          Provider<UserDataSource>(
            create: (context) => UserDataSource(baseUrl),
          ),
          Provider<QuizDataSource>(
            create: (context) => QuizDataSource(baseUrl),
          ),
        ],
        child: QuizApp(),
      ),
    );
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
