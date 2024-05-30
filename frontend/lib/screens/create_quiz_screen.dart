import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:frontend/models/entities.dart';
import 'package:provider/provider.dart';
import 'questions_and_answers_screen.dart';
import 'package:lottie/lottie.dart';

class CreateQuizScreen extends StatefulWidget {
  final bool isEditing;
  final Quiz? quiz;

  const CreateQuizScreen({super.key, required this.isEditing, this.quiz});

  @override
  _CreateQuizScreenState createState() => _CreateQuizScreenState();
}

class _CreateQuizScreenState extends State<CreateQuizScreen> {
  final TextEditingController _quizNameController = TextEditingController();
  final TextEditingController _quizDescriptionController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isEditing && widget.quiz != null) {
      _quizNameController.text = widget.quiz!.name;
      _quizDescriptionController.text = widget.quiz!.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[300],
        elevation: 4,
        title: Text(
          widget.isEditing ? 'Edit Quiz' : 'Create Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isSmallScreen ? 20 : 25,
            color: Colors.indigo[900],
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigo[900]),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz Name',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _quizNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide:
                      BorderSide(color: Colors.indigo[900]!, width: 10.0),
                ),
                hintText: 'Enter quiz name',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Quiz Description',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _quizDescriptionController,
                      maxLines: 4,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Colors.indigo[900]!, width: 10.0),
                        ),
                        hintText: 'Enter quiz description',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: isSmallScreen ? 200 : 400,
                      width: isSmallScreen ? 200 : 400,
                      child: Lottie.asset(
                        'assets/animations/writing.json',
                        fit: BoxFit.cover,
                        repeat: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    User user = await context.read<UserDataSource>().getUser(context);
                    if (!context.mounted) return;

                    Quiz quiz;
                    if (widget.isEditing) {
                      await context.read<QuizDataSource>().updateQuiz(
                        quizId: widget.quiz!.id!,
                        name: _quizNameController.value.text,
                        description: _quizDescriptionController.value.text,
                        isPrivate: false
                      );
                      quiz = widget.quiz!;
                    } else {
                      quiz = await context.read<QuizDataSource>().createQuiz(
                        name: _quizNameController.value.text,
                        description: _quizDescriptionController.value.text,
                        userId: user.id,
                      );
                    }

                    print('Is Editing: ${widget.isEditing}');
                    print('Quiz ID: ${quiz.id}');

                    if (!context.mounted) return;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionsAndAnswersScreen(
                          quizId: quiz.id!,
                          isEditing: widget.isEditing,
                        ),
                      ),
                    );
                  } catch (error) {
                    print('Error: $error');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Failed to create or update quiz: $error')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo[900],
                  padding: EdgeInsets.symmetric(
                    vertical: isSmallScreen ? 12 : 16,
                    horizontal: isSmallScreen ? 20 : 24,
                  ),
                ),
                child: Text(
                  widget.isEditing ? 'Save Changes' : 'Create Quiz',
                  style: TextStyle(fontSize: isSmallScreen ? 16 : null),
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
