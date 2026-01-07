import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.repeat_one_on), label: 'Report', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: 'My Habits', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: 'Account', backgroundColor: Colors.black),
      ]),
    );
  }
}
