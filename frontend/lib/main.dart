import 'dart:js';

import 'package:flutter/material.dart';
import 'package:frontend/data/question_data_source.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/screens/answer_screen.dart';
import 'package:frontend/screens/questions_and_answers_screen.dart';
import 'package:frontend/screens/create_quiz_screen.dart';
import 'package:frontend/screens/home_screen.dart';
import 'package:frontend/screens/loading_question_screen.dart';
import 'package:frontend/screens/quiz_screen.dart';
import 'package:frontend/screens/register_screen.dart';
import 'package:frontend/screens/scoreboard_screen.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'services/token_service.dart';

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
        Provider<QuestionDataSource>(
          create: (context) => QuestionDataSource(baseUrl),
        ),
        Provider(create: (context) => TokenService()),
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
        home: LoginScreen());
  }
}
