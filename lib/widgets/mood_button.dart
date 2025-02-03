import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class MoodButton extends StatelessWidget {
  final String emoji;
  final String label;
  final String mood;

  MoodButton({required this.emoji, required this.label, required this.mood});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Text(emoji, style: TextStyle(fontSize: 30)),
          onPressed: () {
            Provider.of<AppState>(context, listen: false).setMood(mood);
          },
        ),
        Text(label),
      ],
    );
  }
}
