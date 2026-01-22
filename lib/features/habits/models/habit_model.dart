class HabitModel {
  final String id;
  final String title;
  final String icon;
  final int colorValue;

  final RepeatType repeatType;
  final List<int> repeatDays;
  final TimeOfDayType timeOfDayType;

  bool isCompleted;
  final DateTime createdAt;

  HabitModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.colorValue,
    required this.repeatType,
    required this.repeatDays,
    required this.timeOfDayType,
    this.isCompleted = false,
    required this.createdAt,
  });
}

enum RepeatType { daily, weekly, monthly }

enum TimeOfDayType { morning, afternoon, evening }
