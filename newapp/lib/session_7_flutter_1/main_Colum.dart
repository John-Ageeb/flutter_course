import 'dart:ffi';

import 'package:flutter/material.dart';

/// Flutter contain from many widget
/// Main function should start with "runApp" function, and we should send a widget to this function
/// we should start the app with "Material app widget", as this widget has many parameters and function can be used while start app
///Widget Tree: it contain the order of widget to be appear in app, should be planned before start to work in app
///to view all parameters inside widget, press ctrl + space
///we have alot of paramrters inside MaterialApp widget such as:
///home: this is the first widget in app
///home:Scaffold(), mean that a white screen starting app or when we start a new screen
///when i need to use a function or parameter from widget, it should write between ()
///
///
///
///
///
void main() {
  runApp(MaterialApp( // the first function in app
    home: Scaffold( // first screen in app, Scaffold: add a white screen background
      appBar: AppBar( // the top Bar in app


          title: Text("John", style: TextStyle(
              color: Color.fromRGBO(232, 30, 99, 1.0),
              fontSize: 30) // to add text in Bar
            // to control Text Style add
          ),
          elevation: 10, // shadow of Bar

          ;/,l[;1pk/khol;o/l;clipBehavior: p.olifdsds6..
          zxcsl.,] actions: [ // use to make many actions in AppBar
          Icon(Icons.add_alert_sharp),
      Icon(Icons.add_call) // to add icons in the right side in AppBar
      ],
      centerTitle: true, // to center titel in App Bar
    ),
    drawer: Drawer(width: 300, backgroundColor: Colors.yellow),
    // to use side bar and can control in background and width
    floatingActionButton: FloatingActionButton(onPressed: null),
    // Button on the right bottom and can add action to fire function
//body: Text("JJJJJJJ"), // to use body of screen but with this command, we used the whole body with text command only and we could not add extra data to body
// we can use "Containers" to add a lot of data to screen body
// containers contain of (Row, Colum, Stack)
//body: Column(  // width of column can be defined with the max width of data inside column , but the length of column is the full screen length
    // children: [
    //  Text("FIrst"),
    //  Text("Second"),
    //  Text("Third"),
    //  Text("Fourth"),
    //]
    body: Container( // to use more paramnter and function of cloumn such as add color to column
      color: Colors.pink, // add color to all containers

      //child: SingleChildScrollView( // to enable scroll oprion
      child: Column( // if the column lenght exceed screen lenght (overflow), we need to enable screen scroll option
        children: [
          Text("FIrst"),
          Text("Second"),
          Text("Third"),
          Text("Fourth"),
          //  Text("FIrst"),
          // Text("Second"),
          //    Text("Third"),
          //  Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
          //  Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //  Text("Second"),
          //  Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //    Text("Second"),
          //    Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
          //   Text("Third"),
          //  Text("Fourth"),
          // Text("FIrst"),
          //  Text("Second"),
          //    Text("Third"),
          //Text("Fourth"),
          //Text("FIrst"),
          //Text("Second"),
          //Text("Third"),
          //Text("Fourth"),
          //Text("FIrst"),
          //Text("Second"),
          //Text("Third"),
          //Text("Fourth"),
          //Text("FIrst"),
          //Text("Second"),
          //Text("Third"),
          //Text("Fourth"),
          //Text("Third"),
          //    Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
          //     Text("Third"),
          //     Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
//Text("Third"),
          //   Text("Fourth"),
//Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
          //   Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
          //   Text("Second"),
//Text("Third"),
          //   Text("Fourth"),
          //   Text("FIrst"),
        ],
        // mainAxisAlignment: MainAxisAlignment.center , // used to how to put widget inside colum - cenetr -
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // used to how to put widget inside colum - equal space between data inside colum
        //crossAxisAlignment: CrossAxisAlignment.stretch, // stretch colum width to max of screen
        crossAxisAlignment: CrossAxisAlignment
            .start, // put data inside colum in the start width of colum

      ),
    ),
  ),
  ),


  );


}
