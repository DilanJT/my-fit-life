import 'package:flutter/material.dart';
import 'package:my_fit_life/screens/intro_screen.dart';
import 'package:my_fit_life/screens/home_screen.dart';
import 'package:my_fit_life/screens/chest_exercises.dart';
import 'package:my_fit_life/screens/timer_screen.dart';
import 'package:my_fit_life/screens/legs_exercises.dart';
import 'package:my_fit_life/screens/fullbody_exercises.dart';
import 'package:my_fit_life/screens/abs_exercises.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fit App | Get fit with home exercises',
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ChestExercises.id: (context) => ChestExercises(),
        TimeScreen.id: (context) => TimeScreen(),
        LegsExercises.id: (context) => LegsExercises(),
        AbsExercises.id: (context) => AbsExercises(),
        FullbodyExercises.id: (context) => FullbodyExercises()
      },
    );
  }
}

