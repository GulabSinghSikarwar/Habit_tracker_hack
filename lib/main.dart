// import 'package:habit_tracker/screens/login.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Answer.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Quiz.dart';
import 'package:habit_tracker/screens/chooseHabit.dart';
import 'package:habit_tracker/screens/createhabit.dart';
import 'package:habit_tracker/screens/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/quickHabits/prevent.dart';
import 'package:habit_tracker/screens/quickHabits/stayhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        unselectedWidgetColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 14,
            // fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          subtitle1: TextStyle(color: Colors.white),
        ),
        // buttonTheme:
      ),
      // home: SplashScreen(),
      initialRoute: '/onboarding1',
      routes: {
        // "/": (context) => SplashScreen(),
        // '/onboarding1': (context) => Quiz(),
        '/onboarding1': (context) => OnboardingPage1(),
        '/chooseHabit': (context) => chooseHabit(),
        '/createHabit': (context) => createHabit(),
        '/stayHomeHabit': (context) => stayHomeHabit(),
        '/preventoption': (context) => preventoption(),
        // '/onboarding3': (context) => OnboardingPage3(),
      },
    );
  }
}
