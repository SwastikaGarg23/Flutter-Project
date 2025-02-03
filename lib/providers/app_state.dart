import 'package:flutter/material.dart';
import '../models/mood_model.dart';

class AppState extends ChangeNotifier {
  String _mood = "Neutral";
  List<MoodModel> _moodHistory = [];

  String get mood => _mood;
  List<MoodModel> get moodHistory => _moodHistory;

  void setMood(String newMood) {
    _mood = newMood;
    _moodHistory.add(MoodModel(mood: newMood, date: DateTime.now()));
    notifyListeners();
  }
}
