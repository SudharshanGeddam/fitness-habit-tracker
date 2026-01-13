import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:flutter/material.dart';

final List<HabitModel> dataList = [
  HabitModel(
    title: 'Set Small Goals',
    icon: ImageIcon(AppIcons.target, size: 18, color: Colors.green),
    color: Color.fromRGBO(255, 152, 153, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Work',
    icon: ImageIcon(AppIcons.cupIcon, size: 18, color: Colors.amber),
    color: Color.fromRGBO(204, 204, 255, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Meditation',
    icon: ImageIcon(AppIcons.happiness, size: 18, color: Colors.amber),
    color: Color.fromRGBO(204, 255, 204, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'BasketBall',
    icon: ImageIcon(AppIcons.basketBall, size: 18, color: Colors.red),
    color: Color.fromRGBO(255, 204, 153, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Sleep Over 8hr',
    icon: ImageIcon(AppIcons.sleepingIcon, size: 18, color: Colors.cyanAccent),
    color: Color.fromRGBO(153, 204, 255, 1),
    isCompleted: true,
  ),
  HabitModel(
    title: 'Playing Games',
    icon: ImageIcon(
      AppIcons.gameController,
      size: 18,
      color: Colors.deepPurple,
    ),
    color: Color.fromRGBO(255, 153, 204, 1),
    isCompleted: true,
  ),
  HabitModel(
    title: 'Exercise',
    icon: ImageIcon(AppIcons.boxingGloves, size: 18, color: Colors.red),
    color: Color.fromRGBO(153, 197, 193, 1),
    isCompleted: true,
  ),
];
