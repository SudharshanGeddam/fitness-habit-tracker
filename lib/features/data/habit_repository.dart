import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';

class HabitRepository {
  HabitRepository._internal();

  static final HabitRepository instance = HabitRepository._internal();

  final List<HabitModel> _habits = [];
  List<HabitModel> get habits => List.unmodifiable(_habits);

  void addHabit(HabitModel habit) {
    _habits.add(habit);
  }

  void toggleHabitCompletion(String habitId) {
    final habit = _habits.firstWhere((h) => h.id == habitId);
    habit.isCompleted = !habit.isCompleted;
  }

  void clear() {
    _habits.clear();
  }
}
