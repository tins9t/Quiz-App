import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';

class BoxWidget extends StatelessWidget {
  final Quiz quiz;
  final bool showTrashIcon;

  const BoxWidget({
    required this.quiz,
    this.showTrashIcon = false,
    Key? key,
  }) : super(key: key);

  Widget _buildBox(Quiz quiz, {bool showTrashIcon = false, required BuildContext context}) {
    return Container(
      margin: EdgeInsets.all(20), // Add margins for the box
      decoration: BoxDecoration(
        border: Border.all(color: Colors.indigo[300]!, width: 2.0), // Thicker border with same color as toolbar
        borderRadius: BorderRadius.circular(10), // Add rounded corners
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
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 8),
                    Text(
                      quiz.description,
                      style: TextStyle(fontSize: 16.0, color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
                if (showTrashIcon)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () async {
                        await context.read<QuizDataSource>().deleteQuiz(id: quiz.id!);
                      },
                      child: Icon(Icons.delete, color: Colors.indigo[900]),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBox(context: context, quiz, showTrashIcon: showTrashIcon);
  }
}
