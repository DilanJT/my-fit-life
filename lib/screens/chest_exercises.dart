import 'package:flutter/material.dart';
import 'timer_screen.dart';
import '../components/list_item.dart';


class ChestExercises extends StatefulWidget {
  static String id = "chest_exercises";
  @override
  _ChestExercisesState createState() => _ChestExercisesState();
}

class _ChestExercisesState extends State<ChestExercises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black54,
            floating: false,
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Chest",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/chest.jpg"
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  color: Color(0x80000000),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: RaisedButton(
                  onPressed: (){},
                  textColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.orangeAccent,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Start",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {
                    Navigator.pushNamed(context, TimeScreen.id);
                  },
                ),
                ListItem(
                  title: "Jumping Jacks | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
                ListItem(
                  title: "Bird Dog | 10 x 2",
                  imgName: "jumping_jacks.gif",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
