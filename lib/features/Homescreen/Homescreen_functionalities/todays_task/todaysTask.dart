import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constant/Models/Habit.dart';
import 'package:habit_tracker/features/Homescreen/Homescreen_functionalities/todays_task/HabitTile.dart';

class TodaysTask extends StatefulWidget {
  final DateTime todaysDate ;
  final List<String> allHabits;

  TodaysTask({required this.todaysDate, required this.allHabits});

  @override
  State<TodaysTask> createState() {
    // TODO: implement createState
    return TodaysTaskState();
  }
}

class TodaysTaskState extends State<TodaysTask> {
  late List<Habit> allFormated_Habits;
  late DateTime todays_date;

  @override
  void initState() {
    // print(" today init ");

    List<String> allHabits = widget.allHabits;
    todays_date = widget.todaysDate;

    filterHabits(allHabits);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
         ...( allFormated_Habits.map((habit) =>HabitTile(habit:habit )))
        ],
      ),
    );
  }

  void filterHabits(List<String> allHabits) {
    // print(" Filter  habit  ");
    // print(" all Habits : ${allHabits}  ");

    allFormated_Habits = [];
    for (var i = 0; i < allHabits.length; i++) {
      Map<String, dynamic> map = json.decode(allHabits[i]);
      print(map['completed'].runtimeType);




     if (needToShowToday(todays_date, map) || map['isActive']==true)
        allFormated_Habits.add(Habit.fromJsonMap(map));
        
    }
    
  }

  bool needToShowToday(DateTime todays_date, Map<String, dynamic> map) {
    bool isActive = map['isActive'];
    // print(isActive.runtimeType);
    print("map  : ${map}");

    int n1 = map['completed'].length;
    int n2 = map['notCompleted'].length;
    

    if (n1 != 0) {
      for (var i = 0; i < n1; i++) {
        // DateTime date = DateTime.parse(map['completed'][i]);
        print(" date : ${map['completed']}");

        // String d1 = "${date.day}/${date.month}/${date.year}";
        // String d2 =
        //     "${todays_date.day}/${todays_date.month}/${todays_date.year}";

        // if (d1 == d2) {
        //   return true;
        // }
      }
    }
    if (n2 != 0) {
      for (var i = 0; i < n2; i++) {
        // print(" date ${i} : ${map['notCompleted'][i]} today : ${todays_date}");

        DateTime date = DateTime.parse(map['notCompleted'][i]);
        String d1 = "${date.day}/${date.month}/${date.year}";
        String d2 ="${todays_date.day}/${todays_date.month}/${todays_date.year}";

        if(d1!=null && d2!=null && d1==d2)
        {
          return true;

        }

        
      }
    }
    return false;
  }
}
