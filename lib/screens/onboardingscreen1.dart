import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboardingPage1 extends StatefulWidget {
  const onboardingPage1({super.key});

  @override
  State<onboardingPage1> createState() => onboardingPage1State();
}

class onboardingPage1State extends State<onboardingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Center(
                  child: Text("Choose Your First Habit",
                      style: TextStyle(color: Colors.white, fontSize: 30))),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("images/drinkwater.jpg"),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("images/morningexercise.jpg"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
