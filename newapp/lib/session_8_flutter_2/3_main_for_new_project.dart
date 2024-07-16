///To reduce code in Main function, we can create a folder for each new screen such as home
///then crate a new dart file inside home folder
///then add a new class called "HomeScreen" exteded StatelessWidget
///then return the whole Scaffold Widget
///
/// The result that we reduce code in main function
///

import 'package:flutter/material.dart';
import 'package:newapp/session_8_flutter_2/home/home_screen.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the exisiting class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app
    home: HomeScreen(),
  ));
}

//class MyApp{}
