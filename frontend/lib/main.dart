import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/data/question_data_source.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/screens/quiz_screen.dart';
import 'package:frontend/screens/scoreboard_screen.dart';
import 'package:frontend/websocket_channel_wrapper.dart';
import 'package:provider/provider.dart';
import 'bloc/quiz_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'screens/answer_screen.dart';
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
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => QuizBloc(
          channel: WebSocketChannelWrapper().connect('ws://127.0.0.1:8181'),
          context: context,
        ),
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => QuizScreen(),
            '/scoreboard': (context) => ScoreboardScreen(),
          },
        ),
      ),
    );
  }
}
