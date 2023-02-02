import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constant/routes/routes.dart';
import 'package:habit_tracker/features/Homescreen/HomeScreen.dart';
import 'package:habit_tracker/features/Homescreen/inineCalendar/inline_calendar.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Quiz.dart';
import 'package:habit_tracker/features/TestingFormScreen/testForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme:ThemeData.dark(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (() {}),
      //   child: Icon(Icons.add),
      // ),
      title: 'Flutter Demo',
      theme: ThemeData.dark(),

      initialRoute: Routes.Homescreen,
      
      routes: {
        Routes.Homescreen: (context) => Homescreen(),
        
      },
      // home: Homescreen(),
      // home: Homescreen(),
    );
  }
}
