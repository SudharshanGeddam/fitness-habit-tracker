import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget
{
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Reports', style: context.textTheme.titleLarge),
          centerTitle: true,
        ),
        body: Padding(padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 350,
            child: Card(
              color: context.cardColor,
              child: Center(
                child: Text('Chart Coming Soon', style: context.textTheme.bodyMedium),
              ),
            ),
          ) 
        ),
      ),
    );
  }
}