import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:habit_tracker/screens/createhabit.dart';
import 'package:habit_tracker/screens/quickHabits/prevent.dart';
import 'package:habit_tracker/screens/quickHabits/stayhome.dart';

class chooseHabit extends StatelessWidget {
  final Function updateAllHabits;
  List<String> allHabits;
  chooseHabit({required this.allHabits, required this.updateAllHabits});

  // const chooseHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E212A),
      body: SafeArea(
        child: ListView(
          // scrollDirection: ScrollDirection.,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => {
                      Navigator.pop(context),
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Create new habit",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2F313E),
              ),
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //change onboarding
                      builder: (context) => createHabit(allHabits: allHabits,updateAllHabits: updateAllHabits),
                    ),
                  ),
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Regular habit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2F313E),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.one_x_mobiledata,
                    color: Color(0xFFFF7350),
                    size: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "One time task",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "OR CHOOSE FROM THESE CATEGORIES",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ...getImageList(context),
          ],
        ),
      ),
    );
  }
}

List<Widget> getImageList(BuildContext context) {
  final List habitCategories = [
    {
      "image": "habit1",
      "link": null,
    },
    {
      "image": "habit2",
      "link": stayHomeHabit(),
    },
    {
      "image": "habit3",
      "link": preventoption(),
    },
    {
      "image": "habit4",
      "link": null,
    },
    {
      "image": "habit5",
      "link": null,
    },
    {
      "image": "habit6",
      "link": null,
    },
    {
      "image": "habit7",
      "link": null,
    },
  ];
  // List<String> images = [
  //   "habit1",
  //   "habit2",
  //   "habit3",
  //   "habit4",
  //   "habit5",
  //   "habit6",
  //   "habit7",
  // ];
  List<Widget> myResult = [];

  for (var i = 0; i < habitCategories.length; i++) {
    myResult.add(Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              //change onboarding
              builder: (context) => habitCategories[i]["link"],
            ),
          )
        },
        child: Image.asset(
          'images/${habitCategories[i]["image"]}.png',
        ),
      ),
    ));
  }
  return myResult;
}
