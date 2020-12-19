import 'package:flutter/material.dart';

class FitCatergory extends StatefulWidget {
  FitCatergory({this.title, this.imgName, this.onPressed});
  final Function onPressed;
  final String imgName;
  final String title;
  @override
  _FitCatergoryState createState() => _FitCatergoryState();
}

class _FitCatergoryState extends State<FitCatergory> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/${widget.imgName}'
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          color: Color(0x80000000),
          child: Center(
            child: Text(
              "${widget.title}",
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
