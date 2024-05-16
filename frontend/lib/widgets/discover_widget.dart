import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:provider/provider.dart';

import '../models/entities.dart';
import 'box_widget.dart';

class DiscoverWidget extends StatefulWidget {
  @override
  _DiscoverWidgetState createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('DiscoverWidget build method called');
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (query) {
                    setState(() {
                      _performSearch(query);
                    });
                  },
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _performSearch(_searchController.text);
                  });
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
        Expanded(
          child: _buildSearchResultsWidget(),
        ),
      ],
    );
  }

  Widget _buildSearchResultsWidget() {
    return FutureBuilder<List<Quiz>>(
      future: context.read<QuizDataSource>().getQuizzesByName(query: _searchController.text),
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
              Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return BoxWidget(quiz: quiz);
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }

  void _performSearch(String query) async {
    await context.read<QuizDataSource>().getQuizzesByName(query: query);
    print('Search query: $query');
  }
}
