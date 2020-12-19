import 'package:flutter/material.dart';
import 'chest_exercises.dart';
import '../components/logo.dart';
import '../components/fit_catergory.dart';


class HomeScreen extends StatelessWidget {
  static String id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black87,
              floating: false,
              pinned: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset("images/myFitLife_bg.jpg", ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 180.0,
              delegate: SliverChildListDelegate(
                [
                  FitCatergory(
                    title: "Chest",
                    imgName: "chest.jpg",
                    onPressed: () {
                      Navigator.pushNamed(context, ChestExercises.id);
                    },
                  ),
                  FitCatergory(
                    title: "Abs",
                    imgName: "abs.jpg",
                  ),
                  FitCatergory(
                    title: "Legs",
                    imgName: "legs.jfif",
                  ),
                  FitCatergory(
                    title: "Full Body",
                    imgName: "fullbody.jpg",
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

