import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'selected_option_widget.dart';

class SmallScreenWidget extends StatelessWidget {
  final String selectedOption;
  final Function(int) onOptionSelected;
  final int selectedIndex;

  const SmallScreenWidget({
    Key? key,
    required this.selectedOption,
    required this.onOptionSelected,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectedOptionWidget(selectedOption: selectedOption),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.indigo[900],
            ),
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
              label: 'Join Quiz',
            ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.indigo[900],
        onTap: onOptionSelected,
      ),
    );
  }
}
