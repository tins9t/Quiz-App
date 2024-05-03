import 'package:flutter/material.dart';
import 'package:frontend/data/data_source.dart';
import 'package:frontend/screens/create_quiz_screen.dart';
import 'package:frontend/screens/home_screen.dart';
import 'package:frontend/screens/register_screen.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';

const baseUrl = "http://10.0.2.2:5185";

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<DataSource>(
            create: (context) => DataSource(baseUrl),
          ),
        ],
        child: QuizApp(),
      ),
    );

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
