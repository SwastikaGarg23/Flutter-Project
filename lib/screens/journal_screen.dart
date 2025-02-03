import 'package:flutter/material.dart';

class JournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Journal")),
      backgroundColor: Color.fromARGB(255, 177, 232, 255), // Set background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Today's Prompt: What are you grateful for?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Add spacing
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 243, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Write your thoughts here...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing
            Text(
              "Journal Entries",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Add spacing
            Expanded(
              child: ListView(
                children: [
                  JournalEntry(title: "Gratitude", content: "I'm grateful for..."),
                  JournalEntry(title: "Reflection", content: "Today, I felt..."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JournalEntry extends StatelessWidget {
  final String title;
  final String content;

  JournalEntry({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 243, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(content),
      ),
    );
  }
}