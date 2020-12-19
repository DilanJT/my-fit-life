import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(
            Icons.fitness_center,
            size: 100.0,
            color: Colors.orangeAccent,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        Text(
          "My Fit Life",
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 40.0,
          ),
        ),
      ],
    );
  }
}
