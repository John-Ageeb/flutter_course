///we should call the own Widget (class) as an object in maon function
///We can reduce code by crate my own widget and call it only insde main function
///this is the same concept of crateing methode
///also to reduce code inside main function

///

import 'package:flutter/material.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the exisiting class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app
    home: Scaffold(
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
          MyApp(),
          // CALL MY OWN WIDGET - Appear in screen what we return from override fuction

          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      // take a maxiumem of allowed size
                      flex: 50,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          color: purple,
                          child: Text(
                            "Magazine",
                            style: defultText,
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Container(
                      width: 4,
                    ),
                    Expanded(
                      // take a maxiumem of allowed size
                      flex: 50,

                      child: Container(
                          padding: EdgeInsets.all(18),
                          color: purple,
                          child: Text("News",
                              style: defultText, textAlign: TextAlign.center)),
                    ),
                  ],
                ),
                Row(children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
                  Container(
                    width: 4,
                  ),
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  ))
                ]),
                Row(children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
                  Container(
                    width: 4,
                  ),
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  ))
                ]),
                Row(children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
                  Container(
                    width: 4,
                  ),
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  ))
                ]),
                Row(children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
                  Container(
                    width: 4,
                  ),
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  ))
                ]),
                Row(children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
                  Container(
                    width: 4,
                  ),
                  Expanded(
                      child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/pp.jpg"),
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Political",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  ))
                ]),
              ],
            )),
          ),
        ],
      ),
    ),
  ));
}

//class MyApp{}
class MyApp extends StatelessWidget {
  // we must override exising methode inside abstract class
  Widget build(BuildContext context) {
    // abstract methode
    return Text("123"); // return Widget - this is what appear in screen
  }
}
