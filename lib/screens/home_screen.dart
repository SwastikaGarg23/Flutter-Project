import 'package:flutter/material.dart';
import 'meditation_screen.dart';
import 'breathing_exercise_screen.dart';
import 'mood_tracker_screen.dart';
import 'journal_screen.dart';
import 'goals_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Mental Wellness App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 239, 255, 254), Color.fromARGB(255, 151, 255, 243)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(16.0, kToolbarHeight + 32, 16.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'WELCOME TO MENTAL WELLNESS APP',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 166, 147),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              buildFeatureButton(
                context,
                'Meditate',
                Colors.orange,
                MeditationScreen(),
              ),
              SizedBox(height: 20),
              buildFeatureButton(
                context,
                'Breathing Exercise',
                Colors.deepPurple,
                BreathingExerciseScreen(),
              ),
              SizedBox(height: 20),
              buildFeatureButton(
                context,
                'Mood Tracker',
                Colors.pink,
                MoodTrackerScreen(),
              ),
              SizedBox(height: 20),
              buildFeatureButton(
                context,
                'Journal',
                Colors.blue,
                JournalScreen(),
              ),
              SizedBox(height: 20),
              buildFeatureButton(
                context,
                'Goals',
                Color.fromARGB(255, 229, 0, 245),
                GoalsScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureButton(BuildContext context, String text, Color color, Widget screen) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        shadowColor: Colors.teal.shade200,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}
