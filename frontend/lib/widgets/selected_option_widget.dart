import 'package:flutter/material.dart';
import 'package:frontend/screens/quiz_joining_screen.dart';
import 'package:frontend/widgets/discover_widget.dart';
import 'package:frontend/widgets/quiz_list_widget.dart';
import 'package:frontend/widgets/user_quiz_list_widget.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String selectedOption;

  const SelectedOptionWidget({
    Key? key,
    required this.selectedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (selectedOption) {
      case 'Discover':
        print("Discover");
        return DiscoverWidget();
      case 'Library':
        print("Library");
        return UserQuizListWidget();
      case 'Join Quiz':
        print("Join Quiz");
        return QuizJoiningScreen();
      default:
        print("Home");
        return QuizListWidget();
    }
  }
}
