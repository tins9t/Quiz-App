import 'package:flutter/material.dart';
import 'package:frontend/widgets/box_widget.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../models/entities.dart';

class UserQuizListWidget extends StatefulWidget {
  @override
  _UserQuizListWidgetState createState() => _UserQuizListWidgetState();
}

class _UserQuizListWidgetState extends State<UserQuizListWidget>{
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Quiz>>(
      future: context.read<QuizDataSource>().getQuizzesByUser(context: context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No quizzes available'));
        } else {
          return Column(
            children: [
              Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return BoxWidget(quiz: quiz, showTrashIcon: true);
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}