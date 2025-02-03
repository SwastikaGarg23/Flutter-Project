import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  final List<Goal> _goals = [
    Goal(title: "Meditate Daily"),
    Goal(title: "Exercise 3 times a week")
  ];

  void _addGoal(String title) {
    setState(() {
      _goals.add(Goal(title: title));
    });
  }

  void _toggleGoalCompletion(int index) {
    setState(() {
      _goals[index].isComplete = !_goals[index].isComplete;
    });
  }

  void _scheduleNotificationForGoal(int index, TimeOfDay selectedTime) {
    setState(() {
      _goals[index].reminderTime = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goals"),
        backgroundColor: Color.fromARGB(255, 255, 212, 240),
      ),
      backgroundColor: Color.fromARGB(255, 255, 232, 244), // Setting background color of the Scaffold
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _goals.length,
          itemBuilder: (context, index) {
            return GoalTile(
              goal: _goals[index],
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((selectedTime) {
                  if (selectedTime != null) {
                    _scheduleNotificationForGoal(index, selectedTime);
                  }
                });
              },
              onCheckboxChanged: (bool? value) {
                _toggleGoalCompletion(index);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddGoalDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 239, 161, 216),
      ),
    );
  }

  void _showAddGoalDialog(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Goal'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: 'Enter your goal'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_textController.text.isNotEmpty) {
                  _addGoal(_textController.text);
                }
                Navigator.of(context).pop();
              },
              child: Text('Add'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 254, 198, 237),
              ),
            ),
          ],
        );
      },
    );
  }
}

class GoalTile extends StatelessWidget {
  final Goal goal;
  final VoidCallback onTap;
  final ValueChanged<bool?> onCheckboxChanged;

  GoalTile({required this.goal, required this.onTap, required this.onCheckboxChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      color: Color.fromARGB(255, 255, 214, 240), // Setting background color of the Card
      child: ListTile(
        title: Text(
          goal.title,
          style: TextStyle(
            fontSize: 18,
            decoration: goal.isComplete ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: goal.reminderTime != null
            ? Text("Reminder set at ${goal.reminderTime!.format(context)}")
            : null,
        trailing: Checkbox(
          value: goal.isComplete,
          onChanged: onCheckboxChanged,
        ),
        onTap: onTap,
      ),
    );
  }
}

class Goal {
  final String title;
  bool isComplete;
  TimeOfDay? reminderTime;

  Goal({required this.title, this.isComplete = false, this.reminderTime});
}