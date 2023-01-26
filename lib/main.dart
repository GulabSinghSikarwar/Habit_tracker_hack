// import 'package:habit_tracker/screens/login.dart';
import 'package:habit_tracker/screens/onboarding1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bllood Bank App',
      theme: ThemeData(

          // buttonTheme:
          ),
      // home: SplashScreen(),
      initialRoute: '/onboarding1',
      routes: {
        // "/": (context) => SplashScreen(),
        '/onboarding1': (context) => OnboardingPage1(),
        // '/onboarding2': (context) => OnboardingPage2(),
        // '/onboarding3': (context) => OnboardingPage3(),
      },
    );
  }
}
