import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/constant/Models/Habit.dart';
import '../../../../core/constant/HabitCategory.dart';

class HabitTile extends StatefulWidget {
  final Habit habit;

  const HabitTile({super.key, required this.habit});

  @override
  State<HabitTile> createState() => _HabitTileState();
}

class _HabitTileState extends State<HabitTile> {
  late Habit habit;
  late Map<String, String> habitDetails = {
    'title': allHabitsMap[0]['title'],
    'habitId`': allHabitsMap[0]['subCategoryId'],
    'detail': allHabitsMap[0]['detail']
  };

  @override
  void initState() {
    // TODO: implement initState
    habit = widget.habit;
    for (var i = 0; i < allHabitsMap.length; i++) {
      if (allHabitsMap[i]['subCategoryId'] == '${habit.habitId}') {
        habitDetails = {
          'title': allHabitsMap[i]['title'],
          'habitId`': allHabitsMap[i]['subCategoryId'],
          'detail': allHabitsMap[i]['detail']
        };
        break;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      // height: 200,
      // color: Colors.white,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          // margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Icon(
            Icons.laptop,
            color: Colors.purple.shade800,
            size: 40.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        Container(
          // color: Colors.teal,
          // margin: EdgeInsets.fromLTRB(25, 10, 25, 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${habitDetails['title']}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.purple.shade800,
                    ),
                    Text("${habitDetails['detail']}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
