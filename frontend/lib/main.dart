import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/data/question_data_source.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/screens/login_screen.dart';
import 'package:frontend/websocket_channel_wrapper.dart';
import 'package:provider/provider.dart';
import 'bloc/quiz_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'services/token_service.dart';

void main() {
  String baseUrl = kIsWeb ? "http://localhost:5185" : "http://10.0.2.2:5185";
  String wsUrl = kIsWeb ? 'ws://127.0.0.1:8181' : 'ws://10.0.2.2:8181';

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
      child: QuizApp(wsUrl: wsUrl),
    ),
  );
}

class QuizApp extends StatelessWidget {
  final String wsUrl;

  const QuizApp({super.key, required this.wsUrl});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizBloc(
        channel: WebSocketChannelWrapper().connect(wsUrl), quizDataSource: context.read<QuizDataSource>(),
      ),
      child: MaterialApp(
        title: 'Quizilla',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
