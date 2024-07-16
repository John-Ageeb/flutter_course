/// after add Scaffold widget to return to home screen
/// we have many dublicte code inside Scaffold such as Expanded Containers in the first row (Mgazine and News)
///Such as Stack Containers include image and text

///46:00

import 'package:flutter/material.dart';
import 'package:newapp/session_8_flutter_2/home/home_screen_image.dart';
import 'package:newapp/session_8_flutter_2/home/home_screen_titels.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

class HomeScreen extends StatelessWidget {
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
      drawer: Drawer(width: 300, backgroundColor: Colors.yellow),
      // to use side bar and can contorl in background and width
      floatingActionButton: FloatingActionButton(onPressed: null),
      // Button on the right bottom and can add action to fire fuction

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
                    HomeScreenTitels("Magazine"),
                    Container(
                      width: 4,
                    ),
                    HomeScreenTitels("News"),
                  ],
                ),
                Row(children: [
                  HomeScreenImages(text: "1", imagePath: "assets/pp.jpg"),
                  Container(
                    width: 4,
                  ),
                  HomeScreenImages(text: "2", imagePath: "assets/pp.jpg"),
                ]),
                Row(children: [
                  HomeScreenImages(text: "3", imagePath: "assets/pp.jpg"),
                  Container(
                    width: 4,
                  ),
                  HomeScreenImages(text: "4", imagePath: "assets/pp.jpg"),
                ]),
                Row(children: [
                  HomeScreenImages(text: "5", imagePath: "assets/pp.jpg"),
                  Container(
                    width: 4,
                  ),
                  HomeScreenImages(text: "6", imagePath: "assets/pp.jpg"),
                ]),
                Row(children: [
                  HomeScreenImages(text: "7", imagePath: "assets/pp.jpg"),
                  Container(
                    width: 4,
                  ),
                  HomeScreenImages(text: "8", imagePath: "assets/pp.jpg"),
                ]),
                Row(children: [
                  HomeScreenImages(text: "9", imagePath: "assets/pp.jpg"),
                  Container(
                    width: 4,
                  ),
                  HomeScreenImages(text: "10", imagePath: "assets/pp.jpg"),
                ]),
              ],
            )),
          ),
        ],
      ),
    ); // return full  Scaffold Widget - this is what appear in screen
  }
}
