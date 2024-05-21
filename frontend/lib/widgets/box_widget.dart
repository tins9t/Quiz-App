import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';
import '../screens/quiz_info_screen.dart';
import '../screens/create_quiz_screen.dart';

class BoxWidget extends StatelessWidget {
  final Quiz quiz;
  final bool showTrashIcon;
  final bool showEditIcon;

  const BoxWidget({
    required this.quiz,
    this.showTrashIcon = false,
    this.showEditIcon = false,
    Key? key,
  }) : super(key: key);

  Widget _buildBox(Quiz quiz,
      {bool showTrashIcon = false, bool showEditIcon = false, required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => QuizInfoScreen(quiz: quiz),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo[300]!, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.indigo[300], // Color for the toolbar
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle toolbar icon press
                    },
                    icon: Icon(Icons.help_outline, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              padding: EdgeInsets.all(16.0),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quiz.name,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[900]),
                      ),
                      SizedBox(height: 8),
                      Text(
                        quiz.description,
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.indigo[900]),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                  if (showTrashIcon || showEditIcon)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (showEditIcon)
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CreateQuizScreen(
                                      isEditing: true,
                                      quiz: quiz,
                                    ),
                                  ),
                                );
                              },
                              child: Icon(Icons.edit, color: Colors.indigo[900]),
                            ),
                          if (showEditIcon && showTrashIcon)
                            SizedBox(width: 10), // Space between the icons
                          if (showTrashIcon)
                            GestureDetector(
                              onTap: () async {
                                await context
                                    .read<QuizDataSource>()
                                    .deleteQuiz(id: quiz.id!);
                              },
                              child: Icon(Icons.delete, color: Colors.indigo[900]),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBox(
      quiz,
      context: context,
      showTrashIcon: showTrashIcon,
      showEditIcon: showEditIcon,
    );
  }
}
