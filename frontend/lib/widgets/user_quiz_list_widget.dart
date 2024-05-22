import 'package:flutter/material.dart';
import 'package:frontend/widgets/box_widget.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../data/user_data_source.dart';
import '../models/entities.dart';

class UserQuizListWidget extends StatefulWidget {
  @override
  _UserQuizListWidgetState createState() => _UserQuizListWidgetState();
}

class _UserQuizListWidgetState extends State<UserQuizListWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Quiz>>(
      future: _fetchQuizzes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          if (snapshot.error.toString().contains('Token not found')) {
            return Center(child: Text('Please login to review library'));
          } else {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          final user = context.read<User>();
          if (user == null) {
            return Center(child: Text('Please login to review your library'));
          } else {
            return Center(child: Text('Looks empty.. Create a quiz by clicking the \'+\' button!'));
          }
        } else {
          return Column(
            children: [
              Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return BoxWidget(quiz: quiz, showEditIcon: true, showTrashIcon: true, showPrivacyToggle: true);
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Future<List<Quiz>> _fetchQuizzes() async {
    try {
      final user = await context.read<UserDataSource>().getUser(context);
      if (user != null) {
        return context.read<QuizDataSource>().getQuizzesByUser(context: context);
      } else {
        return [];
      }
    } catch (error) {
      throw Exception('Failed to get user data: $error');
    }
  }
}
