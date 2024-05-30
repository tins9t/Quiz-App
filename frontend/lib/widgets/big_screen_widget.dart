import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'selected_option_widget.dart';

class BigScreenWidget extends StatelessWidget {
  final String selectedOption;
  final Function(String) onOptionSelected;

  const BigScreenWidget({
    Key? key,
    required this.selectedOption,
    required this.onOptionSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    _buildListTile('Home', Icons.home),
                    SizedBox(height: 20),
                    _buildListTile('Discover', Icons.explore),
                    SizedBox(height: 20),
                    _buildListTile('Library', Icons.library_books),
                    SizedBox(height: 20),
                    _buildListTile('Join Quiz', Icons.assignment),
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
          child: SelectedOptionWidget(selectedOption: selectedOption),
        ),
      ],
    );
  }

  ListTile _buildListTile(String option, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.indigo,
        size: 20,
      ),
      title: Text(
        option,
        style: TextStyle(
          color: Colors.indigo,
        ),
      ),
      selected: selectedOption == option,
      onTap: () => onOptionSelected(option),
    );
  }
}
