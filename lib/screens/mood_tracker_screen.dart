import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mood_button.dart';
import '../models/mood_model.dart';

class MoodTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mood Tracker")),
      backgroundColor: Color.fromARGB(255, 252, 206, 232), // Set background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "How do you feel today?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Add spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MoodButton(emoji: "😊", label: "Happy", mood: "Happy"),
                MoodButton(emoji: "😐", label: "Neutral", mood: "Neutral"),
                MoodButton(emoji: "😔", label: "Sad", mood: "Sad"),
              ],
            ),
            SizedBox(height: 30), // Add spacing
            Text(
              "Mood History",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Add spacing
            Expanded(
              child: Consumer<AppState>(
                builder: (context, appState, child) {
                  return ListView.builder(
                    itemCount: appState.moodHistory.length,
                    itemBuilder: (context, index) {
                      MoodModel mood = appState.moodHistory[index];
                      return Card(
                        elevation: 3, // Add elevation for a card-like appearance
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          title: Text(
                            mood.mood,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            mood.date.toString(),
                            style: TextStyle(color: Color.fromARGB(255, 243, 54, 152)),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
