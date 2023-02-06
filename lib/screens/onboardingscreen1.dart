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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Choose Your First Habit",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 190,
                      child: Image.asset("images/drinkwater.jpg"),
                    ),
                    Container(
                      height: 200,
                      width: 180,
                      child: Image.asset("images/morningexercise.jpg"),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 190,
                    child: Image.asset("images/read.jpg"),
                  ),
                  Container(
                    height: 200,
                    width: 190,
                    child: Image.asset("images/meditate.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
