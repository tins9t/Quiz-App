import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home_screen.dart';

class CreateQuestionsAndAnswersScreen extends StatefulWidget {
  @override
  _CreateQuestionsAndAnswersScreenState createState() =>
      _CreateQuestionsAndAnswersScreenState();
}

class _CreateQuestionsAndAnswersScreenState
    extends State<CreateQuestionsAndAnswersScreen> {
  List<Map<String, dynamic>> questions = [];

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final bool canSaveQuiz = questions.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Text(
          'Create Quiz',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < questions.length; i++)
                _buildQuestionField(i, isSmallScreen),
              if (questions.length < 15)
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        questions.add({
                          'question': '',
                          'answers': ['', ''],
                          'correctIndices': [],
                        });
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text(
                      'Add Another Question',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: isSmallScreen ? 12 : 16,
                        horizontal: isSmallScreen ? 20 : 24,
                      ),
                      backgroundColor: Colors.indigo[900],
                    ),
                  ),
                ),
              if (canSaveQuiz)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        _saveQuizAndNavigateToHomeScreen(context);
                      },
                      child: Text(
                        'Save Quiz',
                        style: TextStyle(fontSize: isSmallScreen ? 16 : null),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.indigo[900],
                        padding: EdgeInsets.symmetric(
                          vertical: isSmallScreen ? 12 : 16,
                          horizontal: isSmallScreen ? 20 : 24,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionField(int index, bool isSmallScreen) {
    final Map<String, dynamic> question = questions[index];
    final List<String> answers = List<String>.from(question['answers']);
    final bool hasMinusButton = answers.length > 2;
    final bool hasPlusButton = answers.length < 4;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${index + 1}',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  questions[index]['question'] = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.indigo[900]!),
                ),
                hintText: 'Enter question',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Answers',
              style: TextStyle(
                fontSize: isSmallScreen ? 16 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            SizedBox(height: 10),
            for (int i = 0; i < answers.length; i++)
              _buildAnswerField(index, i, isSmallScreen),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (hasPlusButton || hasMinusButton)
                  Row(
                    children: [
                      if (hasPlusButton)
                        IconButton(
                          onPressed: () {
                            setState(() {
                              questions[index]['answers'].add('');
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      if (hasMinusButton)
                        IconButton(
                          onPressed: () {
                            setState(() {
                              questions[index]['answers'].removeLast();
                              if (question['correctIndices']
                                  .contains(answers.length - 1)) {
                                questions[index]['correctIndices'].removeLast();
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                    ],
                  ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      questions.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerField(
      int questionIndex, int answerIndex, bool isSmallScreen) {
    final Map<String, dynamic> question = questions[questionIndex];
    final List<String> answers = List<String>.from(question['answers']);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: question['correctIndices'].contains(answerIndex),
            onChanged: (isChecked) {
              setState(() {
                if (isChecked!) {
                  questions[questionIndex]['correctIndices'].add(answerIndex);
                } else {
                  questions[questionIndex]['correctIndices'].remove(answerIndex);
                }
              });
            },
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  questions[questionIndex]['answers'][answerIndex] = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.indigo[900]!,
                  ),
                ),
                hintText: 'Enter answer ${answerIndex + 1}',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _saveQuizAndNavigateToHomeScreen(BuildContext context) {
    // Simulate saving the quiz, then navigate to the home screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            // You can pass any data you want to the HomeScreen
          ),
        ),
            (route) => false,
      );
    });
  }
}
