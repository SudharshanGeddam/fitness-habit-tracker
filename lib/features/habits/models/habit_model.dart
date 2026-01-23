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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'icon': icon,
      'color': colorValue,
      'repeatType': repeatType.name,
      'repeatDays': repeatDays,
      'timeOfDay': timeOfDayType.name,
      'isCompleted': isCompleted,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory HabitModel.fromJson(Map<String, dynamic> json) {
    return HabitModel(
      id: json['id'] as String,
      title: json['title'] as String,
      icon: json['icon'] as String,
      colorValue: json['color'] as int,
      repeatType: RepeatType.values.firstWhere(
        (e) => e.name == json['repeatType'],
        orElse: () => RepeatType.daily,
      ),
      timeOfDayType: TimeOfDayType.values.firstWhere(
        (e) => e.name == json['timeOfDay'],
        orElse: () => TimeOfDayType.morning,
      ),
      isCompleted: json['isCompleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      repeatDays: [
        ...(json['repeatDays'] as List<dynamic>).map((e) => e as int),
      ],
    );
  }
}

enum RepeatType { daily, weekly, monthly }

enum TimeOfDayType { morning, afternoon, evening }
