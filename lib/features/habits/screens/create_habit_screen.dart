import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CreateHabitScreen extends StatelessWidget {
  const CreateHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_sharp),
                  ),
                  SizedBox(width: 8.0),
                  Text("Create New Habit", style: context.textTheme.titleLarge),
                  Spacer(),
                ],
              ),
              SizedBox(height: 12.0),
              _buildFilterChips(),
              SizedBox(height: 20),
              Text("Habit Name"),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hint: Text("Habit Name"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Icons"),
                  Spacer(),
                  Text("View all"),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ImageIcon(
                          AppIcons.basketBall,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ImageIcon(AppIcons.cupIcon, color: Colors.amber),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ImageIcon(
                          AppIcons.goldBadge,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ImageIcon(
                          AppIcons.iceSkating,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ImageIcon(
                          AppIcons.happiness,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Color"),
              Wrap(
                runAlignment: WrapAlignment.spaceEvenly,

                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.limeAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text("Repeat"),
              SizedBox(height: 20),
              _buildRepeatSectionChips(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("On these Days:"),
                  Spacer(),
                  Text("All day"),
                  Checkbox(value: true, onChanged: (value) {}),
                ],
              ),
              _buildDaySelectionCards(),
              SizedBox(height: 20),
              Text("Do it at:"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Chip(label: Text("Morning")),
                  SizedBox(width: 8.0),
                  Chip(label: Text("Afternoon")),
                  SizedBox(width: 8.0),
                  Chip(label: Text("Evening")),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("End Habit on"),
                  Spacer(),
                  Switch(value: true, onChanged: (value) {}),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Text("Set Remainder"),
                  Spacer(),
                  Switch(value: false, onChanged: (value) {}),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Save")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Filter chips for regular and one time tasks
  Widget _buildFilterChips() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color.fromRGBO(196, 196, 196, 0.25),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Regular Habit"),
            const SizedBox(width: 20),
            Text("One-Time Task"),
          ],
        ),
      ),
    );
  }

  // Repeat section - Daily, Weekly, Monthly
  Widget _buildRepeatSectionChips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Chip(label: Text('Daily')),
        SizedBox(width: 8.0),
        Chip(label: Text('Weekly')),
        SizedBox(width: 8.0),
        Chip(label: Text('Monthly')),
      ],
    );
  }

  // Day Selection
  Widget _buildDaySelectionCards() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("S")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("M")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("T")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("W")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("T")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("F")),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(137, 133, 233, 1),
            ),
            child: Center(child: Text("S")),
          ),
        ),
      ],
    );
  }
}
