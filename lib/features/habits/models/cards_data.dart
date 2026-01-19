import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:flutter/material.dart';

final List<HabitModel> dataList = [
  HabitModel(
    title: 'Set Small Goals',
    icon: '🎯',
    color: Colors.red,
    isCompleted: false,
  ),
  HabitModel(
    title: 'Work',
    icon: '💼',
    color: Colors.purple,
    isCompleted: false,
  ),
  HabitModel(
    title: 'Meditation',
    icon: '🧘‍♂️',
    color: Colors.green,
    isCompleted: false,
  ),
  HabitModel(
    title: 'BasketBall',
    icon: '🏀',
    color: Colors.orange,
    isCompleted: false,
  ),
  HabitModel(
    title: 'Sleep Over 8hr',
    icon: '😴',
    color: Colors.blue,
    isCompleted: true,
  ),
  HabitModel(
    title: 'Playing Games',
    icon: '🎮',
    color: Colors.yellow,
    isCompleted: true,
  ),
  HabitModel(
    title: 'Exercise',
    icon: '🥊',
    color: Colors.pink,
    isCompleted: true,
  ),
];
