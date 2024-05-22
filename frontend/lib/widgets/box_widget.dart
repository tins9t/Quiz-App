import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';
import '../screens/quiz_info_screen.dart';
import '../screens/create_quiz_screen.dart';
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
  late bool isPrivate;

  @override
  void initState() {
    super.initState();
    isPrivate = widget.quiz.isPrivate!;
  }

  void _togglePrivacy() {
    setState(() {
      isPrivate = !isPrivate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 250,
      width: 200,
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
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                            isPrivate ? 'Private' : 'Public',
                            style: TextStyle(color: Colors.white),
                          ),
                          Switch(
                            value: isPrivate,
                            onChanged: (value) {
                              _togglePrivacy();
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          ),
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
                    Image.network(
                      'https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Container(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 5),
                          Text(
                            widget.quiz.name,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[900],
                            ),
                          ),
                          Container(height: 5),
                          Text(
                            widget.quiz.description,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.indigo[900],
                            ),
                          ),
                          Container(height: 10),
                          Text('',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[700],
                            ),
                          ),
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
                                builder: (context) =>
                                    CreateQuizScreen(
                                      isEditing: true,
                                      quiz: widget.quiz,
                                    ),
                              ),
                            );
                          },
                          child: Icon(Icons.edit, color: Colors.indigo[900]),
                        ),
                      if (widget.showEditIcon && widget.showTrashIcon)
                        SizedBox(width: 10),
                      if (widget.showTrashIcon)
                        GestureDetector(
                          onTap: () async {
                            ConfirmationDialog(
                              title: 'Logout',
                              content:
                              'Are you sure you want to logout?',
                              onConfirm: () {
                                context.read<QuizDataSource>().deleteQuiz(
                                    id: widget.quiz.id!);
                              },
                            ).show(context);
                          },
                          child: Icon(Icons.delete, color: Colors.indigo[900]),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),),
    );
  }
}
