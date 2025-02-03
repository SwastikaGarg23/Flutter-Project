import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Guided Meditations"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.orange.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: kToolbarHeight + 20), // To avoid the overlap with the AppBar
              MeditationTile(title: "Morning Meditation", duration: "10 min"),
              SizedBox(height: 20),
              MeditationTile(title: "Evening Relaxation", duration: "15 min"),
            ],
          ),
        ),
      ),
    );
  }
}

class MeditationTile extends StatelessWidget {
  final String title;
  final String duration;

  MeditationTile({required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.orange.shade800,
          ),
        ),
        subtitle: Text(
          duration,
          style: TextStyle(
            color: Colors.orange.shade600,
          ),
        ),
        onTap: () {
          // Add functionality to play meditation
        },
      ),
    );
  }
}