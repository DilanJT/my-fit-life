import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../components/logo.dart';

class IntroScreen extends StatefulWidget {
  static String id = "intro_screen";
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushNamed(context, HomeScreen.id);
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.orangeAccent,
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}


