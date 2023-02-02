import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboardingPage extends StatefulWidget {
  const onboardingPage({super.key});

  @override
  State<onboardingPage> createState() => _onboardingPageState();
}

class _onboardingPageState extends State<onboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.blue[900],
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 35),
                child: Center(
                    child: Text(
                  "Building Your Habit plan...",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ))),
            SizedBox(
              height: 180,
            ),
            Container(
                height: 300,
                width: 300,
                child: Center(child: Image.asset("images/logo.jpg"))),
          ],
        ),
      )),
    );
  }
}
