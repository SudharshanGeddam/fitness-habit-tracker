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
                  Text("Create New Habit", style: TextStyle(fontSize: 22)),
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
              Text("Color"),
              Wrap(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
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
