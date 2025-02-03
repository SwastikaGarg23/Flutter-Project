import 'package:flutter/material.dart';

class JournalEntry extends StatelessWidget {
  final String title;
  final String content;

  JournalEntry({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(content),
    );
  }
}
