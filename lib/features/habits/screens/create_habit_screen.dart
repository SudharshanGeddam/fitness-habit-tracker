import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CreateHabitScreen extends StatefulWidget {
  const CreateHabitScreen({super.key});

  @override
  State<CreateHabitScreen> createState() => _CreateHabitScreenState();
}

int selectedIconIndex = 0, selectedColorIndex = 0, selectedRepeatIndex = 0;

class _CreateHabitScreenState extends State<CreateHabitScreen> {
  bool selectedIcon = false;
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
              _buildIconSelection(),
              SizedBox(height: 20),
              Text("Color"),
              _buildColorSelection(),
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

  // Icon selection - Icon view
  Widget _buildIconSelection() {
    int iconCount = 5;
    List<ImageIcon> icons = [
      ImageIcon(AppIcons.basketBall, color: Colors.red),
      ImageIcon(AppIcons.cupIcon, color: Colors.amber),
      ImageIcon(AppIcons.goldBadge, color: Colors.blue),
      ImageIcon(AppIcons.iceSkating),
      ImageIcon(AppIcons.happiness, color: Colors.green),
    ];
    return Row(
      children: [
        for (var index = 0; index < iconCount; index++)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIconIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 2.0,
                    color: selectedIconIndex == index
                        ? Colors.blue
                        : Colors.transparent,
                  ),
                  color: selectedIconIndex == index
                      ? Colors.grey[300]
                      : context.cardColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: icons[index],
                ),
              ),
            ),
          ),
      ],
    );
  }

  // Color selection - Color view
  Widget _buildColorSelection() {
    List<Color> colors = [
      Colors.blue,
      Colors.amber,
      Colors.blueGrey,
      Colors.red,
      Colors.green,
      Colors.purple,
      Colors.cyan,
      Colors.pink,
      Colors.purpleAccent,
      Colors.indigo,
      Colors.limeAccent,
      Colors.orange,
      Colors.brown,
      Colors.greenAccent,
      Colors.pinkAccent,
    ];
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (var index = 0; index < colors.length; index++)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedColorIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.0,
                    color: selectedColorIndex == index
                        ? Colors.blue
                        : Colors.transparent,
                  ),
                  color: colors[index],
                ),
              ),
            ),
          ),
      ],
    );
  }

  // Repeat section - Daily, Weekly, Monthly
  Widget _buildRepeatSectionChips() {
    List<String> repeatOptions = ['Daily', 'Weekly', 'Monthly'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var option in repeatOptions)
          GestureDetector(
            onTap: () {
              setState(() {
                selectedRepeatIndex = repeatOptions.indexOf(option);
              });
            },
            child: selectedRepeatIndex == repeatOptions.indexOf(option)
                ? Chip(
                    backgroundColor: context.primaryColor,
                    label: Text(option, style: TextStyle(color: Colors.white)),
                  )
                : Chip(
                    backgroundColor: context.cardColor,
                    label: Text(option, style: TextStyle(color: Colors.black)),
                  ),
          ),
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
