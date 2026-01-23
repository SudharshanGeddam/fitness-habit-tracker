import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:fitness_habit_tracker/features/data/habit_repository.dart';
import 'package:fitness_habit_tracker/widgets/habit_card.dart';
import 'package:flutter/material.dart';

class MyHabitsScreen extends StatefulWidget {
  const MyHabitsScreen({super.key});

  @override
  State<MyHabitsScreen> createState() => _MyHabitsScreenState();
}

class _MyHabitsScreenState extends State<MyHabitsScreen> {
  @override
  Widget build(BuildContext context) {
    final habits = HabitRepository.instance.habits;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: ImageIcon(AppIcons.appIcon, color: Colors.blue),
          title: Text("My Habits", style: context.textTheme.titleMedium),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: habits.isEmpty
              ? Center(
                  child: Text(
                    "No habits added yet.",
                    style: context.textTheme.bodyMedium,
                  ),
                )
              : ListView.builder(
                  itemCount: habits.length,
                  itemBuilder: (context, index) {
                    final habit = habits[index];
                    return HabitCard(habits: habit, onToggle: () {  },);
                  },
                ),
        ),
      ),
    );
  }
}
