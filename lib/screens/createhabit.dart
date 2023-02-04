import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:habit_tracker/features/Homescreen/HomeScreen.dart';
import 'package:habit_tracker/screens/chooseHabit.dart';
import '../core/constant/Models/Habit.dart';
import '../core/constant/routes/routes.dart';

final List<bool> _selectedDay = <bool>[
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
final List<bool> _selectedWeek = <bool>[
  false,
  false,
  false,
  false,
  false,
];
final List<bool> _selectedMonth = <bool>[
  false,
  false,
  false,
];

Color firstColor = Color(0xFF1694FF);
Color secondColor = Color(0xFF2F313E);

class createHabit extends StatefulWidget {
  final Function updateAllHabits;
  List<String> allHabits;
  createHabit({required this.allHabits, required this.updateAllHabits});

  @override
  State<createHabit> createState() => _createHabitState();
}

class _createHabitState extends State<createHabit> {
  late Function updateAllHabits;

  late List<String> allHabits;

  initState() {
    updateAllHabits = widget.updateAllHabits;
    allHabits = widget.allHabits;
  }

  void addHabits(
      List<String> allHabits, String potentialHabit, BuildContext context) {
    // print(" add Habit Call ");

    if (allHabits.length == 0) {
      print(" 0 length  ");

      allHabits.add(potentialHabit);
      // print("all Habits before : ${allHabits} ");
      print("about to call  update ");

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
          print("  upcoming habit exisits ");
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
    Habit habit = Habit(habitId: 12, creationDate: DateTime.now().toString());
    Map<String, dynamic> map = habit.toJson();

    print(" create habit call ");

    var jsonString = json.encode(map);

    //  Now we will check if this habit exisit in all  habits and if it is then
    //  we will  simple  Move to HomeScreen

    //  other wise we will add this in allHabits and update the all habits at the
    //  home screen and move  then will Move to HomeScreen
    addHabits(allHabits, jsonString, context);
  }

  get habitNameController => null;

  bool habitGoal = true;
  Color habitColor = Colors.blue;
  // bool habitGoal = false;
  bool habitGoal = false;
  //if 0 select # of times else Time

  int goalForHabitOptions = 0;

  Color hashOfTimeColor = Color(0xFF1694FF);
  Color timeColor = Color(0xFF2F313E);

  Color dailyColor = Color(0xFF1694FF);
  Color weeklyColor = Color(0xFF2F313E);
  Color monthlyColor = Color(0xFF2F313E);

  int repetation = 0;

  get noOfTimesController => null;

  @override
  Widget build(BuildContext context) {
    bool vertical = false;

    // bool getReminder = false;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xFF1E212A),
          child: Column(children: [
            //from top icon to create new habit
            Container(
              decoration: BoxDecoration(
                color: Color(0xff2F313E),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Image.asset(
                            'images/new_habit_top2.png',
                          ),
                        ),
                        InkWell(
                          onTap: () => {
                            //save habit then navigate the page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                //change onboarding
                                builder: (context) => chooseHabit(),
                              ),
                            ),
                          },
                          child: Container(
                            child: Text(
                              "save",
                              style: TextStyle(color: firstColor, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Create new habit",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ],
              ),
            ),
            //habit name and color
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2F313E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          controller: habitNameController,
                          decoration: const InputDecoration(
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 175, 175, 175)),
                            hintText: 'New habit name',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1694FF)),
                            ),
                          ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () => {
                            Navigator.pop(context),
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Image.asset(
                          'images/new_habit_top2.png',
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          //save habit then navigate the page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              //change onboarding
                              builder: (context) => chooseHabit(
                                  allHabits: allHabits,
                                  updateAllHabits: updateAllHabits),
                            ),
                          ),
                        },
                        child: InkWell(
                          onTap: () {
                            createHabit(allHabits, context);
                          },
                          child: Container(
                            child: Text(
                              "save",
                              style: TextStyle(
                                  color: Color(0xff1694FF), fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff1E212A),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        child: Icon(
                          Icons.circle,
                          color: firstColor,
                          size: 40.0,
                        ),
                        onTap: () => {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  color: Color(0xff1E212A),
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: MediaQuery.of(context).size.height,
                                  child: BlockPicker(
                                    pickerColor: firstColor, //default color
                                    onColorChanged: (Color color) {
                                      //on color picked
                                      // print(color);
                                      setState(
                                        () {
                                          firstColor = color;
                                          Navigator.of(context).pop();
                                          getActiveHabitOption();
                                          // getRepetationOptions();
                                          getActiveRepetation();
                                        },
                                      );
                                    },
                                  ),
                                );
                              }),
                        },
                      ),
                    ),
                    Text(
                      "Choose color",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                )),
              ]),
            ),
            //goal for habit
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2F313E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Goal for Habit",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      //continue - adding the checkbox
                      Checkbox(
                        activeColor: firstColor,
                        value: this.habitGoal,
                        onChanged: (bool? habitGoal) {
                          setState(() {
                            this.habitGoal = habitGoal!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (habitGoal) getGoalForHabit(),
                ],
              ),
            ),
            //set repetation
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2F313E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(children: [
                ...getRepetationOptions(),
                SizedBox(
                  height: 15,
                ),
                if (repetation == 0)
                  (showDays())
                else if (repetation == 1)
                  (showWeeks())
                else
                  (showMonths()),
              ]),
            ),
            //get reminder
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2F313E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Get Reminder",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  getSwitch(),
                ],
              ),
            ),
            //Reset
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (() => {
                      setState(
                        () => null,
                      )
                    }),
                child: Text(
                  "Reset Form",
                  style: Theme.of(context).textTheme.headline2,
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: StadiumBorder(),
                  primary: firstColor,
                ),
              ),
            ),
          ]),
        ),
      ),
    ));
  }

  getGoalForHabit() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (() => {
                    setState(
                      () => {
                        goalForHabitOptions = 0,
                        getActiveHabitOption(),
                        getGoalForHabit(),
                      },
                    )
                  }),
              child: Text("# of times"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                shape: StadiumBorder(),
                // primary: firstColor,
                primary: hashOfTimeColor,
              ),
            ),
            ElevatedButton(
              onPressed: (() => {
                    setState(
                      () => {
                        goalForHabitOptions = 1,
                        getActiveHabitOption(),
                        getGoalForHabit(),
                      },
                    )
                  }),
              child: Text("Time"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                shape: StadiumBorder(),
                primary: timeColor,
              ),
            ),
          ],
        ),
        if (goalForHabitOptions == 0)
          (habitGoalInputField('0 times'))
        else
          (habitGoalInputField('0 minuts')),
      ],
    );
  }

  getActiveHabitOption() {
    if (goalForHabitOptions == 0) {
      hashOfTimeColor = firstColor;
      timeColor = secondColor;
    } else {
      hashOfTimeColor = secondColor;
      timeColor = firstColor;
    }
  }

  habitGoalInputField(String time) {
    return TextFormField(
      controller: noOfTimesController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintStyle: TextStyle(color: Color.fromARGB(255, 175, 175, 175)),
        hintText: time,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF1694FF)),
        ),
      ),
    );
  }

  getRepetationOptions() {
    List<Widget> myresult = [];
    myresult.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //daily  button
          ElevatedButton(
            onPressed: (() => {
                  setState(
                    () => {
                      repetation = 0,
                      getActiveRepetation(),
                      getRepetationOptions(),
                    },
                  )
                }),
            child: Text("Daily"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              shape: StadiumBorder(),
              primary: dailyColor,
            ),
          ),
          //weekly button
          ElevatedButton(
            onPressed: (() => {
                  setState(
                    () => {
                      repetation = 1,
                      getActiveRepetation(),
                      getRepetationOptions(),
                    },
                  )
                }),
            child: Text("Weekly"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              shape: StadiumBorder(),
              primary: weeklyColor,
            ),
          ),
          //monthly button
          ElevatedButton(
            onPressed: (() => {
                  setState(
                    () => {
                      repetation = 2,
                      getActiveRepetation(),
                      getRepetationOptions(),
                    },
                  )
                }),
            child: Text("Monthly"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              shape: StadiumBorder(),
              primary: monthlyColor,
            ),
          ),
        ],
      ),
    );
    return myresult;
  }

  showDays() {
    List<Widget> days = <Widget>[
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('M')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('T')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('W')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('T')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('F')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('S')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('S')),
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ToggleButtons(
          direction: Axis.horizontal,
          onPressed: (int index) {
            // All buttons are selectable.
            setState(() {
              _selectedDay[index] = !_selectedDay[index];
              print(_selectedDay[index]);
              showDays();
            });
          },
          // borderRadius: const BorderRadius.all(Radius.circular(50)),
          // selectedBorderColor: firstColor,
          borderColor: secondColor,
          selectedColor: firstColor,
          fillColor: secondColor,
          color: Colors.white,
          constraints: const BoxConstraints(
            minHeight: 50,
            minWidth: 40,
          ),
          isSelected: _selectedDay,
          children: days,
        ),
      ],
    );
  }

  showWeeks() {
    List<Widget> weeks = <Widget>[
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('1')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('2')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('3')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('4')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('5')),
      )
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ToggleButtons(
          direction: Axis.horizontal,
          onPressed: (int index) {
            // All buttons are selectable.
            setState(() {
              _selectedWeek[index] = !_selectedWeek[index];
              print(_selectedWeek[index]);
              showDays();
            });
          },
          // selectedBorderColor: firstColor,
          borderColor: secondColor,
          selectedColor: firstColor,
          fillColor: secondColor,
          color: Colors.white,
          isSelected: _selectedWeek,
          children: weeks,
        ),
      ],
    );
  }

  showMonths() {
    List<Widget> months = <Widget>[
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('1')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('2')),
      ),
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: firstColor,
          border: Border.all(
            color: firstColor,
            width: 2,
          ),
        ),
        child: Center(child: const Text('3')),
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ToggleButtons(
          direction: Axis.horizontal,
          onPressed: (int index) {
            // All buttons are selectable.
            setState(() {
              _selectedMonth[index] = !_selectedMonth[index];
              print(_selectedMonth[index]);
              showDays();
            });
          },
          // selectedBorderColor: firstColor,
          borderColor: secondColor,
          selectedColor: firstColor,
          fillColor: secondColor,
          color: Colors.white,
          isSelected: _selectedMonth,
          children: months,
        ),
      ],
    );
  }

  getActiveRepetation() {
    if (repetation == 0) {
      dailyColor = firstColor;
      weeklyColor = secondColor;
      monthlyColor = secondColor;
    } else if (repetation == 1) {
      dailyColor = secondColor;
      weeklyColor = firstColor;
      monthlyColor = secondColor;
    } else {
      dailyColor = secondColor;
      weeklyColor = secondColor;
      monthlyColor = firstColor;
    }
  }
}

class getSwitch extends StatefulWidget {
  const getSwitch({super.key});

  @override
  State<getSwitch> createState() => _getSwitchState();
}

class _getSwitchState extends State<getSwitch> {
  bool getReminder = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
        // This bool value toggles the switch.
        value: getReminder,
        activeColor: firstColor,
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            getReminder = value;
            print(getReminder);
          });
        });
  bool habitExsist(Map<String, dynamic> exsisting_habit,
      Map<String, dynamic> upcomingHabit) {
    if (exsisting_habit['habitId'] == upcomingHabit['habitId']) {
      return true;
    }
    return false;
  }
}
