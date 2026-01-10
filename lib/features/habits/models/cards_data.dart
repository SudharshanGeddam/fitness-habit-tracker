import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:flutter/material.dart';

final List<HabitModel> dataList = [
  HabitModel(
    title: 'Set Small Goals',
    icon: "🎯",
    color: Color.fromRGBO(255, 152, 153, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Work',
    icon: "🏆",
    color: Color.fromRGBO(204, 204, 255, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Meditation',
    icon: "😇",
    color: Color.fromRGBO(204, 255, 204, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'BasketBall',
    icon: "🏀",
    color: Color.fromRGBO(255, 204, 153, 1),
    isCompleted: false,
  ),
  HabitModel(
    title: 'Sleep Over 8hr',
    icon: "😴",
    color: Color.fromRGBO(153, 204, 255, 1),
    isCompleted: true,
  ),
  HabitModel(
    title: 'Playing Games',
    icon: "🕹️",
    color: Color.fromRGBO(255, 153, 204, 1),
    isCompleted: true,
  ),
  HabitModel(
    title: 'Exercise',
    icon: "🥊",
    color: Color.fromRGBO(153, 197, 193, 1),
    isCompleted: true,
  ),
];
