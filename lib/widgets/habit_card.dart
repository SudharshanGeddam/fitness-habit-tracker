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
          color: widget.habits.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(widget.habits.icon, style: TextStyle(fontSize: 30)),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                widget.habits.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(
              widget.habits.isCompleted
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: widget.habits.isCompleted
                  ? Colors.green
                  : widget.habits.color,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
