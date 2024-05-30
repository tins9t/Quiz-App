import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'selected_option_widget.dart';

class BigScreenWidget extends StatelessWidget {
  final String selectedOption;
  final Function(String) onOptionSelected;

  const BigScreenWidget({
    super.key,
    required this.selectedOption,
    required this.onOptionSelected,
  });

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
                    const SizedBox(height: 20),
                    _buildListTile('Home', Icons.home),
                    const SizedBox(height: 20),
                    _buildListTile('Discover', Icons.explore),
                    const SizedBox(height: 20),
                    _buildListTile('Library', Icons.library_books),
                    const SizedBox(height: 20),
                    _buildListTile('Join Quiz', Icons.assignment),
                    const SizedBox(height: 20),
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
        const VerticalDivider(),
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
        style: const TextStyle(
          color: Colors.indigo,
        ),
      ),
      selected: selectedOption == option,
      onTap: () => onOptionSelected(option),
    );
  }
}
