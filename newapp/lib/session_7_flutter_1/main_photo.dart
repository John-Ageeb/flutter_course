import 'package:flutter/material.dart';

/// Flutter contain from many widget
/// We can use a three type of image:
/// 1- asset: which added to app
/// we must create an "assets" folder and add a copy of images inside it
/// we must add in asset: files link under flutter section in "pubspec.yaml"
/// we should press "pub get" in every update of ymal file
/// 2- Network: URL link
/// 3- File: local from the local phone
///
///
/// Colum prevent Photo Aspect Ratio
/// Row did not prevent Photo Aspect Ratio
///
///
///
void main() {
  runApp(
    MaterialApp(
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
//body: Text("JJJJJJJ"), // to use body of screen but with this command, we used the whole body with text command only and we could not add extra data to body
// we can use "Containers" to add alot of data to screen body
// containers contain of (Row, Colum, Stack)
//body: Column(  // width of column can be defined with the max width of data inside column , but the lenth of column is the full screen lenth
        // children: [
        //  Text("FIrst"),
        //  Text("Second"),
        //  Text("Third"),
        //  Text("Fourth"),
        //]
        body: Container(
          // to use more paramnter and function of cloumn such as add color to column
          child: Column(
            // if the colum n lenght exceed screen lenght (overflow), we need to enable screen scroll option
            children: [
              Image.asset("assets/pp2.png") // to add image from assets,
            ],
          ),
        ),
      ),
    ),
  );
}
