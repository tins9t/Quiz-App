import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../models/entities.dart';
import 'account_settings_screen.dart';
import 'create_quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedOption = 'Home';
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery
        .of(context)
        .size
        .width < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 4,
        title: Row(
          children: [
            Text(
              'Quiz App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isSmallScreen ? 20 : 25,
                color: Colors.indigo[900],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.indigo[900],),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => AccountSettingsScreen()),);
              },
            ),
          ],
        ),
      ),
      body: _buildMenuBar(isSmallScreen),
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          bottom: isSmallScreen ? 70 : 0,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateQuizScreen()),
            );
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.indigo[900],
        ),
      ),
    );
  }

  Widget _buildMenuBar(bool isSmallScreen) {
    if (isSmallScreen) {
      return _buildSmallScreenLayout();
    } else {
      return _buildLargeScreenLayout();
    }
  }

  Widget _buildLargeScreenLayout() {
    return Row(
      children: [
        Container(
          width: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                        Icons.home, color: Colors.indigo, size: 20,),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Home';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.explore, color: Colors.indigo, size: 20),
                      title: Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Discover';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.library_books, color: Colors.indigo, size: 20),
                      title: Text(
                        'Library',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Library';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                          Icons.assignment, color: Colors.indigo, size: 20),
                      title: Text(
                        'Sessions',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedOption = 'Sessions';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Center(
                  child: Lottie.asset(
                    'assets/animations/writing.json',
                    fit: BoxFit.cover,
                    repeat: false,
                    height: 130,
                    width: 130,
                  ),
                ),
              ),
            ],
          ),
        ),
        VerticalDivider(),
        Expanded(
          child: _buildSelectedOptionWidget(),
        ),
      ],
    );
  }


  Widget _buildSmallScreenLayout() {
    return Scaffold(
      body: _buildSelectedOptionWidget(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Fixed
        backgroundColor: Colors.indigo[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo[900],),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.indigo[900]),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.indigo[900]),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.indigo[900]),
            label: 'Sessions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[900],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _selectedOption =
            ['Home', 'Discover', 'Library', 'Sessions'][index];
          });
        },
      ),
    );
  }


  Widget _buildSelectedOptionWidget() {
    switch (_selectedOption) {
      case 'Discover':
        print("Discover");
        return Container();
      case 'Library':
        print("Library");
        return _buildUserQuizzesListWidget(context);
      case 'Sessions':
        print("Sessions");
        return Container(); // TODO
      default:
        print("Home");
        return _buildQuizzesListWidget(context);
    }
  }

  Widget _buildBox(Quiz quiz, {bool showTrashIcon = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.indigo, Colors.white],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quiz.name, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 20),
              Text(quiz.description, style: TextStyle(color: Colors.white)),
            ],
          ),
          if (showTrashIcon)
            GestureDetector(
              onTap: () {
                // TODO
              },
              child: Icon(Icons.delete, color: Colors.white),
            ),
        ],
      ),
    );
  }



  Widget _buildQuizzesListWidget(BuildContext context) {
    return FutureBuilder<List<Quiz>>(
      future: context.read<QuizDataSource>().getNewestQuizzes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No quizzes available'));
        } else {
          return Column(
            children: [
              Text('Newest Quizzes:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return _buildBox(quiz);
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildUserQuizzesListWidget(BuildContext context) {
    return FutureBuilder<List<Quiz>>(
      future: context.read<QuizDataSource>().getQuizzesByUser(context: context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No quizzes available'));
        } else {
          return Column(
            children: [
              Text('Library:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return _buildBox(quiz, showTrashIcon: true);
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}