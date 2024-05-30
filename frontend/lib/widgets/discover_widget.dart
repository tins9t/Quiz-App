import 'package:flutter/material.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../models/entities.dart';
import 'box_widget.dart';

class DiscoverWidget extends StatefulWidget {
  const DiscoverWidget({super.key});

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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onSubmitted: (query) {
                      setState(() {
                        _performSearch(query);
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _performSearch(_searchController.text);
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo[700],
                ),
                child: const Text('Search'),
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
    if (_searchController.text.isEmpty) {
      return const Center(
        child: Text('Input search query to display quizzes'),
      );
    }

    return FutureBuilder<List<Quiz>>(
      future: context
          .read<QuizDataSource>()
          .getQuizzesByName(query: _searchController.text),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Lottie.asset('assets/animations/loading.json',
                height: 50, width: 50),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No quizzes available'));
        } else {
          return Column(
            children: [
              const Text('',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 0.9),
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final Quiz quiz = snapshot.data![index];
                    return BoxWidget(
                      quiz: quiz,
                    );
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
