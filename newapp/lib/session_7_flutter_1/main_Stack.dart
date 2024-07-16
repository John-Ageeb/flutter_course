import 'package:flutter/material.dart';

///
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
//body: Row(  // width of column can be defined with the max width of data inside column , but the lenth of column is the full screen lenth
        // children: [
        //  Text("FIrst"),
        //  Text("Second"),
        //  Text("Third"),
        //  Text("Fourth"),
        //]
        body: Container(
          // to use more paramnter and function of cloumn such as add color to column

          //child: SingleChildScrollView( // to enable scroll oprion
          child: Stack(
            // to add two widget on each other - lastest Container will appear firstlay
            alignment: Alignment.center, // to alignment Containers in screen
            children: [
              Container(
                //Container inside Container
                width: 400,
                height: 400,
                color: Colors.pink,
              ),
              Container(
                //Container inside Container
                width: 300,
                height: 300,
                color: Colors.yellow,
              ),
              Container(
                //Container inside Container
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                //Container inside Container
                width: 100,
                height: 100,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
