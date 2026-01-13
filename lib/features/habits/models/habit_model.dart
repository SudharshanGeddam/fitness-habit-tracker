import 'package:flutter/material.dart';

class HabitModel {
  String title;
  ImageIcon icon;
  Color color;
  bool isCompleted;

  HabitModel({
    required this.title,
    required this.icon,
    required this.color,
    required this.isCompleted,
  });
}
