// import 'package:habit_tracker/screens/login.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Answer.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Quiz.dart';
import 'package:habit_tracker/screens/Splash-Screen.dart';
import 'package:habit_tracker/screens/chooseHabit.dart';
import 'package:habit_tracker/screens/createhabit.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constant/routes/routes.dart';
import 'package:habit_tracker/features/Homescreen/HomeScreen.dart';
import 'package:habit_tracker/features/Homescreen/inineCalendar/inline_calendar.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Quiz.dart';
import 'package:habit_tracker/features/TestingFormScreen/testForm.dart';
import 'package:habit_tracker/screens/onboardingscreen.dart';
import 'package:habit_tracker/screens/onboardingscreen1.dart';
import 'package:habit_tracker/screens/onboardingscreen2.dart';
import 'package:habit_tracker/screens/quickHabits/prevent.dart';
import 'package:habit_tracker/screens/quickHabits/stayhome.dart';

void main() {
  runApp(MyApp());
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
        // brightness: Brightness.dark,
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
      // darkTheme: ThemeData.dark(),
      // home: SplashScreen(),
      initialRoute: '/splashScreen',
      // initialRoute: '/onboarding2',
      routes: {
        // "/": (context) => SplashScreen(),
        '/splashScreen': (context) => Splash_screen(),
        '/onboarding': (context) => onboardingPage(),
        '/onboarding1': (context) => onboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
        '/homeScreen': (context) => Homescreen(),
        // '/onboarding1': (context) => Quiz(),
        //'/onboarding1': (context) => OnboardingPage1(),
        // '/chooseHabit': (context) => chooseHabit(),
        // '/createHabit': (context) => createHabit(),
        '/stayHomeHabit': (context) => stayHomeHabit(),
        '/preventoption': (context) => preventoption(),
        // '/onboarding3': (context) => OnboardingPage3(),
        '/initialQuiz': ((context) => Quiz())
      },
    );
  }
}
