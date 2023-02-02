import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constant/Models/Habit.dart';
import 'package:habit_tracker/core/constant/routes/routes.dart';

class TestForm extends StatelessWidget {
  final Function updateAllHabits;
  List<String> allHabits;
  TestForm({required this.allHabits, required this.updateAllHabits});

  void addHabits(
      List<String> allHabits, String potentialHabit, BuildContext context) {
    // print(" add Habit Call ");
    if (allHabits.length == 0) {
      
      print(" 0 length  ");

    
      allHabits.add(potentialHabit);
      // print("all Habits before : ${allHabits} ");
      updateAllHabits(allHabits);
      Navigator.pushNamed(context, Routes.Homescreen);
      // print(" create else  ");
    } else {
      for (var i = 0; i < allHabits.length; i++) {
        Map<String, dynamic> exsisting_habit = json.decode(allHabits[i]);
        Map<String, dynamic> upcomingHabit = json.decode(potentialHabit);
        if (habitExsist(exsisting_habit, upcomingHabit)) {
          //  just navigate to homescreen
          Navigator.pushNamed(context, Routes.Homescreen);
          // print(" create if ");
        } else {
          allHabits.add(potentialHabit);
          updateAllHabits(allHabits);
          Navigator.pushNamed(context, Routes.Homescreen);
          // print(" create else  ");
        }
      }
    }
  }

  void createHabit(List<String> allHabits, BuildContext context) {
    Habit habit = Habit(habitId: 11, creationDate: DateTime.now().toString());
    Map<String, dynamic> map = habit.toJson();

    print(" create habit call ");

    var jsonString = json.encode(map);

    //  Now we will check if this habit exisit in all  habits and if it is then
    //  we will  simple  Move to HomeScreen

    //  other wise we will add this in allHabits and update the all habits at the
    //  home screen and move  then will Move to HomeScreen
    addHabits(allHabits, jsonString, context);
  }

  @override
  Widget build(BuildContext context) {
    // as Map<String,dynamic>;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("TestForm"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.add),
        ),
        body: Container(
          child: ElevatedButton(
            onPressed: () {
              createHabit(allHabits, context);
            },
            child: Text("create Habit "),
          ),
        ));
  }

  bool habitExsist(Map<String, dynamic> exsisting_habit,
      Map<String, dynamic> upcomingHabit) {
    if (exsisting_habit['habitId'] == upcomingHabit['habitId']) {
      return true;
    }
    return false;
  }
}
