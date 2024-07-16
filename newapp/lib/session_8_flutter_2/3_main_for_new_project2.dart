/// to use ListVIew

import 'package:flutter/material.dart';
import 'package:newapp/session_8_flutter_2/screens/home2/home_screen2.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the exisiting class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app
    home: HomeScreen2(),
  ));
}

//class MyApp{}

/// we must studt 4.dart first
/// to navigate between screen, we can use "routes"
///
///
