import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:fitness_habit_tracker/widgets/habit_card.dart';
import 'package:flutter/material.dart';

class MyHabitsScreen extends StatelessWidget{
  const MyHabitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Habits', style: context.textTheme.titleLarge),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    // Example HabitCard usage
                    HabitCard(
                      habits: HabitModel(title: 'Morning Run', isCompleted: false, icon: '🏃‍➡️', color: Colors.purpleAccent),
                      onToggle: () {
                        // Handle toggle action
                      },
                    ),
                    HabitCard(
                      habits: HabitModel(title: 'Read Book', isCompleted: false, icon: '📚', color: Colors.blueAccent),
                      onToggle: () {
                        // Handle toggle action
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}