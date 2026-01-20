import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:fitness_habit_tracker/features/habits/models/cards_data.dart';
import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:fitness_habit_tracker/features/habits/screens/create_habit_screen.dart';
import 'package:fitness_habit_tracker/widgets/bottom_nav_bar.dart';
import 'package:fitness_habit_tracker/features/habits/screens/reports_screen.dart';
import 'package:fitness_habit_tracker/features/habits/screens/my_habits_screen.dart';
import 'package:fitness_habit_tracker/features/habits/screens/account_screen.dart';
import 'package:fitness_habit_tracker/widgets/habit_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<HabitModel> get activeHabitsCards =>
      dataList.where((habit) => !habit.isCompleted).toList();
  List<HabitModel> get completedHabitsCards =>
      dataList.where((habit) => habit.isCompleted).toList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _currentIndex == 0
            ? AppBar(
                leading: ImageIcon(AppIcons.appIcon, color: Colors.blue),
                title: Column(
                  children: [
                    Text("Fitness Tracker"),
                    Text(
                      "Discipline builds freedom",
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout_outlined),
                  ),
                ],
                centerTitle: true,
              )
            : null,
        floatingActionButton: _currentIndex == 0
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateHabitScreen(),
                    ),
                  );
                },
                child: Icon(Icons.add),
              )
            : null,
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
        body: _buildBodyForIndex(),
      ),
    );
  }

  Widget _buildBodyForIndex() {
    switch (_currentIndex) {
      case 0:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildDayFilterChips(),
              _buildFilterChips(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ...activeHabitsCards.map(
                      (habit) => HabitCard(
                        habits: habit,
                        onToggle: () {
                          setState(() {
                            habit.isCompleted = true;
                          });
                        },
                      ),
                    ),

                    if (completedHabitsCards.isNotEmpty) ...[
                      SizedBox(height: 20),
                      Text(
                        "Completed Habits",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      ...completedHabitsCards.map(
                        (habit) => HabitCard(
                          habits: habit,
                          onToggle: () {
                            setState(() {
                              habit.isCompleted = false;
                            });
                          },
                        ),
                      ),
                    ] else ...[
                      SizedBox(height: 20),
                      Text(
                        "No Completed Habits Yet!",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      case 1:
        return ReportsScreen();
      case 2:
        return MyHabitsScreen();
      case 3:
        return AccountScreen();
      default:
        return Container();
    }
  }

  Widget _buildDayFilterChips() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color.fromRGBO(196, 196, 196, 0.25),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text("Today")),
              const SizedBox(width: 20),
              TextButton(onPressed: () {}, child: Text("Weekly")),
              const SizedBox(width: 20),
              TextButton(onPressed: () {}, child: Text("Overall")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Chip(label: Text("All"), shape: StadiumBorder()),
        const SizedBox(width: 8),
        Chip(label: Text("Morning"), shape: StadiumBorder()),
        const SizedBox(width: 8),
        Chip(label: Text("Afternoon"), shape: StadiumBorder()),
        const SizedBox(width: 8),
        Chip(label: Text("Evening"), shape: StadiumBorder()),
      ],
    );
  }
}
