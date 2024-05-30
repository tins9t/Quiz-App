import 'package:flutter/material.dart';
import 'package:frontend/screens/quiz_joining_screen.dart';
import 'package:frontend/widgets/discover_widget.dart';
import 'package:frontend/widgets/quiz_list_widget.dart';
import 'package:frontend/widgets/user_quiz_list_widget.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String selectedOption;

  const SelectedOptionWidget({
    super.key,
    required this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    switch (selectedOption) {
      case 'Discover':
        print("Discover");
        return const DiscoverWidget();
      case 'Library':
        print("Library");
        return const UserQuizListWidget();
      case 'Join Quiz':
        print("Join Quiz");
        return const QuizJoiningScreen();
      default:
        print("Home");
        return const QuizListWidget();
    }
  }
}
