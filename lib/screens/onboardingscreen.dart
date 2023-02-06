import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constant/routes/routes.dart';

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
          child: InkWell(
            onTap: (){
                     Navigator.pushNamed(context, Routes.OnboardingPage1);

            },
            child: Container(
        color: Color(0xFF311EB6),
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
                  child: Center(child: Image.asset("images/work_time.gif"))),
            ],
        ),
      ),
          )),
    );
  }
}
