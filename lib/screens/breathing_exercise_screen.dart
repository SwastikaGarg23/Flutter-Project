import 'package:flutter/material.dart';

class BreathingExerciseScreen extends StatefulWidget {
  @override
  _BreathingExerciseScreenState createState() => _BreathingExerciseScreenState();
}

class _BreathingExerciseScreenState extends State<BreathingExerciseScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 4))
      ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Breathing Exercise")),
      backgroundColor: Color.fromARGB(255, 222, 193, 255), // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween(begin: 1.0, end: 1.5).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
              child: Container(
                width: 150, // Increase size for better visibility
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 131, 33, 243),
                  boxShadow: [ // Add a subtle shadow
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Breathe", // Add a text to indicate breathing
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20), // Add spacing between the breathing circle and the button
            // ElevatedButton(
            //   onPressed: () {}, // Add functionality later
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //     child: Text(
            //       "Start Exercise", // Button text
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ),
              // style: ElevatedButton.styleFrom(
              //   foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Button shape
              // ),
            
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}