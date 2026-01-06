import 'package:fitness_habit_tracker/features/habits/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessHabitApp());
}

class FitnessHabitApp extends StatelessWidget {
  const FitnessHabitApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}
