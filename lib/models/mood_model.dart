class MoodModel {
  final String mood;
  final DateTime date;
  final String? note;

  MoodModel({required this.mood, required this.date, this.note});

  // Convert a MoodModel into a Map. The keys must correspond to the names of the columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'mood': mood,
      'date': date.toIso8601String(),
      'note': note,
    };
  }

  // Implement a method to convert a Map into a MoodModel
  factory MoodModel.fromMap(Map<String, dynamic> map) {
    return MoodModel(
      mood: map['mood'],
      date: DateTime.parse(map['date']),
      note: map['note'],
    );
  }

  @override
  String toString() {
    return 'MoodModel{mood: $mood, date: $date, note: $note}';
  }
}
