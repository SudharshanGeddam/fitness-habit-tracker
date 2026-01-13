import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromRGBO(137, 133, 233, 1),
      unselectedItemColor: Color.fromRGBO(183, 183, 183, 1),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
          icon: ImageIcon(AppIcons.reportIcon),
          label: 'Report',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_rounded),
          label: 'My Habits',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_sharp),
          label: 'Account',
        ),
      ],
    );
  }
}
