import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/quiz_joining_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../data/user_data_source.dart';
import 'home_screen.dart';
import 'register_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  final _emailController = TextEditingController(text: 'mudkip@example.com');
  final _passwordController = TextEditingController(text: 'mudkip123!');

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _navigateToRegisterScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  void _navigateToQuizJoiningScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const QuizJoiningScreen()),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isSmallScreen = width < 600;
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Center(
        child: SizedBox(
          width: isSmallScreen ? width : 800,
          height: isSmallScreen ? null : height / 2 + 100,
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Container(
              padding: EdgeInsets.all(width * 0.02),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to the Quizilla',
                      style: TextStyle(
                          fontSize: isSmallScreen ? width * 0.06 : 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: isSmallScreen ? 1 : 2,
                          child: Container(
                            padding: EdgeInsets.all(width * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Join us today!',
                                  style: TextStyle(
                                      fontSize:
                                          isSmallScreen ? width * 0.05 : 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: height * 0.02),
                                AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Lottie.asset(
                                    'assets/animations/success.json',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                TextButton(
                                  onPressed: () =>
                                      _navigateToRegisterScreen(context),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: isSmallScreen ? 20 : 40,
                                        vertical: isSmallScreen ? 10 : 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (!isSmallScreen)
                          Container(
                            width: 1.0,
                            color: Colors.black,
                            height: height * 0.4,
                          ),
                        Expanded(
                          flex: isSmallScreen ? 1 : 3,
                          child: Container(
                            padding: EdgeInsets.all(width * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Already have an account? Login here!',
                                  style: TextStyle(
                                      fontSize:
                                          isSmallScreen ? width * 0.04 : 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: isSmallScreen ? 10 : 40),
                                TextField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: const Icon(Icons.email),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color: Colors.blueAccent, width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: isSmallScreen ? 10 : 20),
                                TextField(
                                  controller: _passwordController,
                                  obscureText: _isHidden,
                                  onSubmitted: (value) async {
                                    final email = _emailController.value.text;
                                    final password =
                                        _passwordController.value.text;
                                    _login(email, password, context);
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: _toggleVisibility,
                                      icon: _isHidden
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color: Colors.blueAccent, width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: isSmallScreen ? 10 : 50),
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      final email = _emailController.value.text;
                                      final password =
                                          _passwordController.value.text;
                                      _login(email, password, context);
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: isSmallScreen ? 20 : 40,
                                          vertical: isSmallScreen ? 10 : 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.deepPurple[700],
                                      padding: EdgeInsets.symmetric(
                                          horizontal: isSmallScreen ? 20 : 40,
                                          vertical: isSmallScreen ? 10 : 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Visibility(
        visible: !kIsWeb,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: Colors.indigo[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Psst.. click ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the Quiz Joining Screen
                    _navigateToQuizJoiningScreen(context);
                  },
                  child: Text(
                    'HERE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 2), // Add some spacing between the text and the button
                Text(
                  ' if you want to join a Quiz without logging in.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login(String email, String password, BuildContext context) async {
    if (email.isEmpty || password.isEmpty) return;
    try {
      await context.read<UserDataSource>().login(
            email: email,
            password: password,
            context: context,
          );
      if (context.mounted) {
        _navigateToHomeScreen(context);
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            padding: const EdgeInsets.all(16),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Center(
              child: Text('Invalid credentials. Please try again.'),
            ),
          ),
        ),
      );
    }
  }
}
