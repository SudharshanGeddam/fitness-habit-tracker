import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget{
  const HabitCard({super.key, required this.habitName});
  final String habitName;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(habitName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Icon(Icons.check_circle_outline, color: Colors.green),
          ],
        ),
      ),
    );
  }
}