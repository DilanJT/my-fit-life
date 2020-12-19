import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({this.onPressed, this.title, this.color, this.imgName});
  final String imgName;
  final Color color;
  final String title;
  final Function onPressed;
  static String id = "list_item";
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(2),
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.orangeAccent,
              width: 1.0,
            ),
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "images/$imgName"
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
