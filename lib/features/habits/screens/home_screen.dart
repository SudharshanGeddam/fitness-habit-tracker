import 'package:fitness_habit_tracker/features/habits/models/cards_data.dart';
import 'package:fitness_habit_tracker/features/habits/models/habit_model.dart';
import 'package:fitness_habit_tracker/widgets/bottom_nav_bar.dart';
import 'package:fitness_habit_tracker/widgets/habit_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<HabitModel> get activeHabitsCards =>
      dataList.where((habit) => !habit.isCompleted).toList();
  List<HabitModel> get completedHabitsCards =>
      dataList.where((habit) => habit.isCompleted).toList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc),

          title: Column(
            children: [
              Text("Fitness Tracker"),
              Text("Discipline builds freedom", style: TextStyle(fontSize: 12)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
          ],
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavBar(),
        body: Padding(
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDayFilterChips() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color.fromRGBO(196, 196, 196, 0.25),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
