import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class chooseHabit extends StatelessWidget {
  const chooseHabit({super.key});

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
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30.0,
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
            ...getImageList(),
          ],
        ),
      ),
    );
  }
}

List<Widget> getImageList() {
  List<String> images = [
    "habit1",
    "habit2",
    "habit3",
    "habit4",
    "habit5",
    "habit6",
    "habit7",
  ];
  List<Widget> myResult = [];

  for (var i = 0; i < images.length; i++) {
    myResult.add(Container(
      height: 150,
      padding: EdgeInsets.all(15),
      child: Image.asset(
        'images/${images[i]}.png',
      ),
    ));
  }
  return myResult;
}
