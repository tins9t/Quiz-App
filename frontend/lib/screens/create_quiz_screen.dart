import 'package:flutter/material.dart';
import 'create_questions_and_answers.dart';
import 'package:lottie/lottie.dart';

class CreateQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

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
      body:  Padding(
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
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.indigo[900]!, width: 10.0),
                  ),
                  hintText: 'Enter quiz name',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Quiz Description',
                style: TextStyle(
                  fontSize: isSmallScreen ? 16 : 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(height: 10),
               Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLines: 4,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.indigo[900]!, width: 10.0), // Adjusted border width
                          ),
                          hintText: 'Enter quiz description',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
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
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateQuestionsAndAnswersScreen()),
                    );
                  },
                  child: Text(
                    'Create Quiz',
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
            ],
          ),
        ),
      resizeToAvoidBottomInset: false,
    );
  }
}
