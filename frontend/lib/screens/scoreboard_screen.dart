import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScoreboardScreen extends StatefulWidget {
  @override
  _ScoreboardScreenState createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  final List<Map<String, dynamic>> scoreboardData = [
    {'name': 'Player 1', 'points': 100},
    {'name': 'Player 2', 'points': 150},
    {'name': 'Player 3', 'points': 80},
    {'name': 'Player 4', 'points': 120},
    {'name': 'Player 5', 'points': 90},
  ];

  Map<String, int> flickerPoints = {};
  Timer? flickerTimer;
  Timer? stopTimer;

  @override
  void initState() {
    super.initState();
    flickerTimer = Timer.periodic(Duration(milliseconds: 50), _updatePoints);
    stopTimer = Timer(Duration(seconds: 3), _stopFlicker);
  }

  @override
  void dispose() {
    flickerTimer?.cancel();
    stopTimer?.cancel();
    super.dispose();
  }

  void _updatePoints(Timer timer) {
    setState(() {
      scoreboardData.forEach((data) {
        flickerPoints[data['name']] = _generateRandomPoints(data['points']);
      });
    });
  }

  void _stopFlicker() {
    flickerTimer?.cancel();
    setState(() {
      scoreboardData.forEach((data) {
        flickerPoints[data['name']] = data['points'];
      });
    });
  }

  int _generateRandomPoints(int actualPoints) {
    final random = Random();
    return random.nextInt(actualPoints + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20), // Add margins for the box
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2.0), // Thicker border with same color as toolbar
              borderRadius: BorderRadius.circular(10), // Add rounded corners
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.blue, // Color for the toolbar
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Scoreboard',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: scoreboardData.length,
                  itemBuilder: (context, index) {
                    final playerData = scoreboardData[index];
                    final playerName = playerData['name'];
                    final playerPoints = flickerPoints.containsKey(playerName)
                        ? flickerPoints[playerName]
                        : playerData['points'];

                    final backgroundColor = index.isEven ? Colors.orange[50] : Colors.lightBlueAccent[50];

                    return Container(
                      color: backgroundColor,
                      child: ListTile(
                        title: Text(
                          playerName,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: Text(
                          '$playerPoints points',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add some spacing
          Lottie.asset('assets/animations/top.json'), // Lottie animation
        ],
      ),
    );
  }
}