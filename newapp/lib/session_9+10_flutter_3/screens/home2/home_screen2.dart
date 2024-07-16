/// if we need to cretae a dynamic list from a data source
/// We can store data in List inside a dediccated class called "Model Class"
/// Use List View Widget to create a duplicate itemBuilder
/// ListView have the automatic scroll option
/// the advantage of ListVIew is that create what we see only in screen to reduce memory use
/// also we scroll the screen, the old itemBuilder which ahrady viewed and created will be removed once discappear from screen
/// ///do not use Expand inside ListView
///

import 'package:flutter/material.dart';
import 'package:newapp/session_9+10_flutter_3/screens/home2/home_screen_image2.dart';
import 'package:newapp/session_9+10_flutter_3/screens/home2/home_screen_titels2.dart';

import 'Model/magazin_model.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

class HomeScreen2 extends StatelessWidget {
  static String routename = "home2";

  List<MagazineModel> magazines = [
    MagazineModel(imagePath: "assets/pp.jpg", titel: "Sports"),
    MagazineModel(imagePath: "assets/pp.jpg", titel: "helath"),
    MagazineModel(imagePath: "assets/pp.jpg", titel: "test1"),
    MagazineModel(imagePath: "assets/pp.jpg", titel: "test2"),
  ];

  Widget build(BuildContext context) {
    // abstract methode
    return Scaffold(
      // first screen in app, Scaffold: add a white screen background
      appBar: AppBar(
        // the top Bar in app
        title: Text("John",
            style: TextStyle(
                color: Colors.pink, fontSize: 30) // to add text in Bar
            // to control Text Style add
            ),
        elevation: 10,
        // shadow of Bar
        // leading: Icon(Icons.arrow_back) , // it's before title, we can use a cutom icon on it
        actions: [
          // use to make many actions in AppBar
          Icon(Icons.add_alert_sharp),
          // to add icons in the right side in AppBar
        ],
        centerTitle: true, // to center titel in App Bar
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
      // Button on the right bottom and can add action to fire fuction

      body: Column(
        children: [
          Row(
            children: [
              HomeScreenTitels2("Magazine"),
              Container(
                width: 4,
              ),
              HomeScreenTitels2("News"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              // itemCount: 1000, // number of duplicate widget
              // itemBuilder: myIteamBuilder // add duplicate widget
              itemCount: magazines.length, // to use data inside data model
              itemBuilder: myIteamBuilder,
            ),
          ),
        ],
      ),
    ); // return full  Scaffold Widget - this is what appear in screen
  }

  Widget myIteamBuilder(BuildContext context, int index) {
    // index come from itemCount starting from 0
    print(index);

    return HomeScreenImages2(
        text: "${magazines[index].titel}",
        imagePath: "${magazines[index].imagePath}");
  }
}
