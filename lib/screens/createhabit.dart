import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:habit_tracker/screens/chooseHabit.dart';

class createHabit extends StatefulWidget {
  const createHabit({super.key});

  @override
  State<createHabit> createState() => _createHabitState();
}

class _createHabitState extends State<createHabit> {
  get habitNameController => null;
  Color habitColor = Colors.blue;
  // bool habitGoal = false;
  bool habitGoal = false;
  //if 0 select # of times else Time
  int goalForHabitOptions = 0;
  Color firstColor = Color(0xFF1694FF);
  Color secondColor = Color(0xFF2F313E);
  int repetation = 0;

  get noOfTimesController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                            style: TextStyle(
                                color: Color(0xff1694FF), fontSize: 18),
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
                        color: habitColor,
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
                                  pickerColor: habitColor, //default color
                                  onColorChanged: (Color color) {
                                    //on color picked
                                    // print(color);
                                    setState(
                                      () {
                                        habitColor = color;
                                        Navigator.of(context).pop();
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
              Row(
                children: [
                  //daily button
                  ElevatedButton(
                    onPressed: (() => {
                          setState(
                            () => {
                              repetation = 0,
                            },
                          )
                        }),
                    child: Text("Daily"),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      shape: StadiumBorder(),
                      // primary: firstColor,
                    ),
                  ),
                  //weekly button
                  ElevatedButton(
                    onPressed: (() => {
                          setState(
                            () => {
                              repetation = 1,
                            },
                          )
                        }),
                    child: Text("Weekly"),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      shape: StadiumBorder(),
                      primary: secondColor,
                    ),
                  ),
                  //monthly button
                  ElevatedButton(
                    onPressed: (() => {
                          setState(
                            () => {
                              repetation = 2,
                            },
                          )
                        }),
                    child: Text("Monthly"),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      shape: StadiumBorder(),
                      primary: secondColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              if (repetation == 0) (showDays()),
            ]),
          ),
        ]),
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
                primary: firstColor,
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
                primary: secondColor,
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

  void getActiveHabitOption() {
    if (goalForHabitOptions == 0) {
      firstColor = Color(0xFF1694FF);
      secondColor = Color(0xFF2F313E);
      print(goalForHabitOptions);
    } else {
      firstColor = Color(0xFF2F313E);
      secondColor = Color(0xFF1694FF);
      print(goalForHabitOptions);
    }
  }

  showDays() {
    List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < days.length; i++)
          (Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: firstColor,
            ),
            child: Center(
              child: Text(
                '${days[i]}',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          )),
      ],
    );
  }
}
