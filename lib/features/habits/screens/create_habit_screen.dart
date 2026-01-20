import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CreateHabitScreen extends StatefulWidget {
  const CreateHabitScreen({super.key});

  @override
  State<CreateHabitScreen> createState() => _CreateHabitScreenState();
}

int selectedColorIndex = 0, selectedRepeatIndex = 0, selectedTimeIndex = 0;
String selectedIconIndex = '🏀';
final Set<int> selectedDays = {};

class _CreateHabitScreenState extends State<CreateHabitScreen> {
  bool selectedIcon = false;
  bool isHabitNameFilled = false;
  @override
  Widget build(BuildContext context) {
    final isEnabled = isHabitNameFilled;
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
                onChanged: (value) {
                  setState(() {
                    isHabitNameFilled = value.trim().isNotEmpty;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Icons"),
                  Spacer(),
                  GestureDetector(
                    onTap: _openEmojiPicker,
                    child: Text(
                      "View all",
                      style: TextStyle(color: context.primaryColor),
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: context.primaryColor),
                ],
              ),
              SizedBox(height: 20),
              _buildIconSelection(),
              SizedBox(height: 20),
              Text("Color"),
              _buildColorSelection(selectedColorIndex),
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
              _buildTimeSelectionChips(),
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
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: isEnabled ? context.primaryColor : Colors.grey,
                  ),
                  child: AnimatedScale(
                    scale: isEnabled ? 1.03 : 1.0,
                    duration: Duration(milliseconds: 150),
                    curve: Curves.easeInOut,
                    child: ElevatedButton(
                      onPressed: isEnabled ? () {} : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: Text("Save"),
                    ),
                  ),
                ),
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
    List<String> icons = ['🏀', '☕', '🏅', '⛸️', '😊'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var index = 0; index < iconCount; index++)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIconIndex = icons[index];
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      width: 2.0,
                      color: selectedIconIndex == icons[index]
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    color: selectedIconIndex == icons[index]
                        ? Colors.grey[300]
                        : context.cardColor,
                  ),
                  child: AnimatedScale(
                    scale: selectedColorIndex == index ? 1.05 : 1.0,
                    duration: Duration(milliseconds: 120),
                    curve: Curves.easeInOut,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(icons[index], style: TextStyle(fontSize: 28)),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Color selection - Color view
  Widget _buildColorSelection(int index) {
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
        for (var i = 0; i < colors.length; i++)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedColorIndex = i;
                });
              },
              child: SizedBox(
                width: 55,
                height: 55,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.0,
                          color: selectedColorIndex == i
                              ? context.primaryColor
                              : Colors.transparent,
                        ),
                        color: colors[i],
                      ),
                    ),
                    if (selectedColorIndex == i)
                      Positioned(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.check, color: Colors.white, size: 40),
                      ),
                  ],
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
    List<String> days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(days.length, (index) {
        final isSelected = selectedDays.contains(index);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                selectedDays.remove(index);
              } else {
                selectedDays.add(index);
              }
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: isSelected ? context.primaryColor : context.cardColor,
            ),
            child: Center(
              child: Text(
                days[index],
                style: context.textTheme.labelLarge?.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  // Time Selection Chips
  Widget _buildTimeSelectionChips() {
    List<String> timeOptions = ['Morning', 'Afternoon', 'Evening'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var option in timeOptions)
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTimeIndex = timeOptions.indexOf(option);
              });
            },
            child: selectedTimeIndex == timeOptions.indexOf(option)
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

  // Emoji selection widget
  void _openEmojiPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.50,
          child: EmojiPicker(
            onEmojiSelected: (category, emoji) {
              setState(() {
                selectedIconIndex = emoji.emoji;
              });
              Navigator.pop(context);
            },
            config: Config(
              height: 28,
              skinToneConfig: SkinToneConfig(
                enabled: false,
                indicatorColor: context.primaryColor,
              ),
              searchViewConfig: SearchViewConfig(
                backgroundColor: Colors.black12,
                buttonIconColor: Colors.white,
                hintText: "Search Emoji",
              ),
              categoryViewConfig: CategoryViewConfig(
                initCategory: Category.SMILEYS,
              ),
            ),
          ),
        );
      },
    );
  }
}
