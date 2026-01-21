import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: ImageIcon(AppIcons.appIcon, color: Colors.blue),
          title: Text("Account", style: context.textTheme.titleMedium),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 350,
            child: Card(
              color: context.cardColor,
              child: Center(
                child: Text(
                  'Account details coming soon',
                  style: context.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
