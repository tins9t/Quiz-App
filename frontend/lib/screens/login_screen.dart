import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../data/data_source.dart';
import 'register_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    bool isSmallScreen = width < 600;

    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Center(
        child: Container(
          width: isSmallScreen ? width : 600,
          height: isSmallScreen ? null : height/2+100,
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
                                  style: TextStyle(fontSize: isSmallScreen
                                      ? width * 0.05
                                      : 20.0, fontWeight: FontWeight.bold),
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
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: isSmallScreen
                                            ? width * 0.05
                                            : 20.0,
                                        vertical: isSmallScreen
                                            ? height * 0.02
                                            : 10.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
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
                                  style: TextStyle(fontSize: isSmallScreen
                                      ? width * 0.04
                                      : 16.0, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: height * 0.02),
                                TextField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.indigo[300]!, width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.indigo[300]!, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                TextField(
                                  controller: _passwordController,
                                  obscureText: _isHidden,
                                  onSubmitted: (value) async {
                                    final email = _emailController.value.text;
                                    final password = _passwordController.value.text;
                                    if (email.isEmpty || password.isEmpty) return;
                                    await context.read<DataSource>().login(email: email, password: password);
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: _toggleVisibility,
                                      icon: _isHidden
                                          ? Icon(Icons.visibility_off)
                                          : Icon(Icons.visibility),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.blueAccent, width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: isSmallScreen ? width *
                                              0.05 : 20.0,
                                          vertical: isSmallScreen ? height *
                                              0.02 : 10.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10.0),
                                      ),
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
    );
  }
}
