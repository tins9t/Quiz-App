import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../models/entities.dart';
import '../screens/create_quiz_screen.dart';
import '../screens/quiz_info_screen.dart';
import 'confirmation_dialog.dart';

class BoxWidget extends StatefulWidget {
  final Quiz quiz;
  final bool showTrashIcon;
  final bool showEditIcon;
  final bool showPrivacyToggle;

  const BoxWidget({
    required this.quiz,
    this.showTrashIcon = false,
    this.showEditIcon = false,
    this.showPrivacyToggle = false,
    Key? key,
  }) : super(key: key);

  @override
  _BoxWidgetState createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  bool _isPrivate = false;

  @override
  void initState() {
    super.initState();
    _isPrivate = widget.quiz.isPrivate ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final isMediumScreen = MediaQuery.of(context).size.width < 800;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: isSmallScreen ? 250 : 300,
        width: 400,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => QuizInfoScreen(quiz: widget.quiz),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.indigo[300], // Toolbar color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star_border, color: Colors.white),
                      if (widget.showPrivacyToggle)
                        Row(
                          children: [
                            Text(
                              _isPrivate ? 'Private' : 'Public',
                              style: TextStyle(color: Colors.white),
                            ),
                            Visibility(
                              visible: !isMediumScreen || isSmallScreen,
                              child: Switch(
                                value: _isPrivate,
                                onChanged: (value) {
                                  ConfirmationDialog(
                                    title: 'Change quiz publicity',
                                    content:
                                        'Are you sure you want to make this quiz public? Everyone will be able to see and start your quiz.',
                                    onConfirm: () async {
                                      setState(() {
                                        _isPrivate = value;
                                      });
                                      await context
                                          .read<QuizDataSource>()
                                          .updateQuiz(
                                              quizId: widget.quiz!.id!,
                                              name: widget.quiz!.name,
                                              description:
                                                  widget.quiz!.description,
                                              isPrivate: value);
                                    },
                                  ).show(context);

                                  print("Privacy: $_isPrivate");
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Colors.grey,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                              ),
                            )
                          ],
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (!isMediumScreen || isSmallScreen)
                        Lottie.asset(
                          'assets/animations/question.json',
                          height: 100,
                          width: 100,
                        ),
                      Container(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 5),
                            Visibility(
                                visible: !isMediumScreen || isSmallScreen,
                                child: Text(
                                  widget.quiz.name,
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo[900],
                                  ),
                                )),
                            Container(height: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (widget.showTrashIcon || widget.showEditIcon)
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (widget.showEditIcon)
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => CreateQuizScreen(
                                    isEditing: true,
                                    quiz: widget.quiz,
                                  ),
                                ),
                              );
                            },
                            child: Visibility(
                              visible: !isMediumScreen || isSmallScreen,
                              child:
                                  Icon(Icons.edit, color: Colors.indigo[900]),
                            ),
                          ),
                        if (widget.showEditIcon && widget.showTrashIcon)
                          SizedBox(width: 10),
                        if (widget.showTrashIcon)
                          GestureDetector(
                            onTap: () async {
                              ConfirmationDialog(
                                title: 'Delete Quiz',
                                content:
                                    'Are you sure you want to delete this quiz?',
                                onConfirm: () {
                                  context
                                      .read<QuizDataSource>()
                                      .deleteQuiz(id: widget.quiz.id!);
                                },
                              ).show(context);
                            },
                            child: Visibility(
                                visible: !isMediumScreen || isSmallScreen,
                                child: Icon(Icons.delete,
                                    color: Colors.indigo[900])),
                          )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
