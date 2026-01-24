import 'dart:convert';

import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HabitRepository {
  HabitRepository._internal();

  static final HabitRepository instance = HabitRepository._internal();
  static const _storageKey = 'habits_storage_key';

  final List<HabitModel> _habits = [];
  List<HabitModel> get habits => List.unmodifiable(_habits);

  void addHabit(HabitModel habit) {
    _habits.add(habit);
    saveHabits();
  }

  void toggleHabitCompletion(String habitId) {
    final habit = _habits.firstWhere((h) => h.id == habitId);
    habit.isCompleted = !habit.isCompleted;
    saveHabits();
  }

  // Simulate saving to persistent storage
  Future<void> saveHabits() async {
    final prefs = await SharedPreferences.getInstance();
    final habitList = _habits.map((habit) => habit.toJson()).toList();
    await prefs.setStringList(
      _storageKey,
      jsonEncode(habitList) as List<String>,
    );
  }

  // Simulate loading from persistent storage
  Future<void> loadHabits() async {
    final prefs = await SharedPreferences.getInstance();
    final storedHabits = prefs.getStringList(_storageKey);
    if (storedHabits != null) {
      _habits.clear();
      for (var habitJson in storedHabits) {
        final habitMap = jsonDecode(habitJson) as Map<String, dynamic>;
        _habits.add(HabitModel.fromJson(habitMap));
      }
    }
  }

  void clear() {
    _habits.clear();
  }
}
