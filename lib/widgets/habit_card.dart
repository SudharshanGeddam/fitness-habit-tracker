import 'package:fitness_habit_tracker/features/habits/models/cards_data.dart';
import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final item = dataList[index];

        return Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: Container(
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 0.7)
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 50,),
                  Expanded(
                    child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(item.icon, style: TextStyle(fontSize: 40),))),
                  const SizedBox(width: 10,),
                  Text(item.title, style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  Expanded(child: Container(),), 
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
