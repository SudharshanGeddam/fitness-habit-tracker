import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:flutter/material.dart';

class HabitCard extends StatefulWidget {
  const HabitCard({super.key, required this.habits, required this.onToggle});

  final HabitModel habits;
  final VoidCallback onToggle;
  @override
  State<HabitCard> createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  bool isCompleted = false;
  int checkedColor = 0xFF4CAF50;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCompleted = !isCompleted;
        });
        widget.onToggle();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(widget.habits.colorValue),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(widget.habits.icon),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                widget.habits.title,
                style: context.textTheme.titleMedium,
              ),
            ),
            Icon(
              widget.habits.isCompleted
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: widget.habits.isCompleted
                  ? Color(checkedColor)
                  : Color(widget.habits.colorValue),
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
