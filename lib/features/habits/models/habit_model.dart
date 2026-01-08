import 'package:flutter/material.dart';

class HabitModel {
  late final String title;
  late final String icon;
  late final Color color;
  late final bool isCompleted;

  HabitModel({required this.title, required this.icon, required this.color, required this.isCompleted});
}
