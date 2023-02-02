import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constant/Models/Habit.dart';
import 'package:habit_tracker/core/constant/routes/routes.dart';
import 'package:habit_tracker/features/Homescreen/Homescreen_functionalities/todays_task/todaysTask.dart';
import 'package:habit_tracker/features/Homescreen/inineCalendar/inline_calendar.dart';
import 'package:habit_tracker/features/TestingFormScreen/testForm.dart';
import 'package:habit_tracker/screens/chooseHabit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<Homescreen> {
  DateTime _habit_date = DateTime.now();
  late List<String> allHabits;
  void fillInitial_allHabits(List<String> allHabitList) {
    allHabits = allHabitList;
  }

  void updateAllHabits(List<String> updatedList) {
    setState(() {
      allHabits = [...updatedList];
    });

    updateListInSP(allHabits);

    //  this will  update all  habits and at shared preferences
    //
  }

  Future<List<String>> getAllHabitData() async {
    final prefs = await SharedPreferences.getInstance();

    List<String>? allHabits = prefs.getStringList('allHabits');
    if (allHabits == null) {
      allHabits = [];
    }

    return allHabits;
  }

  void changeHabitDate(DateTime new_Habit_Date) {
    print(" calling change date ");
    setState(() {
      _habit_date = new_Habit_Date;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return chooseHabit();
              },
            ));
          }),
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          child: Container(
            color: Color(0xFF1E212A),
            child: FutureBuilder(
              future: getAllHabitData(),
              builder: (context, snapshot) {
                List<Widget> children = [];

                if (snapshot.connectionState == ConnectionState.waiting) {
                  //  during this time splash screen will be  displayed
                  children.add(CircularProgressIndicator());
                } else {
                  if (snapshot.hasData) {
                    List<String> allHabitList = snapshot.data!;

                    fillInitial_allHabits(allHabitList);

                    children.add(Container(
                      child: Column(
                        children: [
                          InlineCalender(
                              changeHabitDate: changeHabitDate,
                              habitDate: _habit_date),
                          Container(
                            width: double.infinity,
                            height: 110,

                            // width: double.infinity,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(15),
                                // color: Colors.teal[400],
                                image: DecorationImage(
                              image: AssetImage('images/taskBanner.png'),
                            )),
                          ),
                          TodaysTask(
                              todaysDate: _habit_date, allHabits: allHabitList)
                        ],
                      ),
                    ));
                  } else if (snapshot.hasData == null) {
                    children.add(Container(
                      child: Text(" null value "),
                    ));
                  } else if (snapshot.hasError) {
                    children.add(Column(
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error}'),
                        ),
                      ],
                    ));
                  }
                }
                return children[0];
              },
            ),
          ),
        ));
  }

  void updateListInSP(List<String> allHabits) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
  }
}
