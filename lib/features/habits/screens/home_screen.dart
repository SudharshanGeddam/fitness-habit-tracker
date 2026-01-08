import 'package:fitness_habit_tracker/widgets/bottom_nav_bar.dart';
import 'package:fitness_habit_tracker/widgets/habit_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        body: Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: Column(
            children: [
              Padding(
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
                        Text("Today"),
                        const SizedBox(width: 20),
                        Text("Weekly"),
                        const SizedBox(width: 20),
                        Text("Overall"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
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
              ),
              

              // PageView builder
              Expanded(child: HabitCard()),
              
              Row(
                children: [
                  Text("Completed"),
                  const SizedBox(width: 5,),
                ],
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: AlignmentGeometry.bottomEnd,
                child: FloatingActionButton(onPressed: (){}, 
                child: Icon(Icons.add),),
              ),
              BottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
