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
  Color habitColor = Colors.red;
  // bool habitGoal = false;
  bool habitGoal = true;
  //if 0 select # of times else Time
  int goalForHabitOptions = 0;
  Color firstColor = Color(0xFF1694FF);
  Color secondColor = Color(0xFF2F313E);

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
                        decoration: InputDecoration(
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
              )
                  //   child: BlockPicker(
                  // pickerColor: Colors.red, //default color
                  // onColorChanged: (Color color) {
                  //   //on color picked
                  //   print(color);
                  // },),
                  ),
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
                  height: 10,
                ),
                if (habitGoal) getGoalForHabit()
              ],
            ),
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
                      },
                    )
                  }),
              child: Text("# of times"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                shape: StadiumBorder(),
                primary: firstColor,
              ),
            ),
            ElevatedButton(
              onPressed: (() => {
                    setState(
                      () => {
                        goalForHabitOptions = 1,
                        getActiveHabitOption(),
                        print(1),
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
      ],
    );
  }

  void getActiveHabitOption() {
    if (goalForHabitOptions == 0) {
      Color firstColor = Color(0xFF1694FF);
      Color secondColor = Color(0xFF2F313E);
    } else {
      Color firstColor = Color(0xFF2F313E);
      Color secondColor = Color(0xFF1694FF);
    }
  }
}
