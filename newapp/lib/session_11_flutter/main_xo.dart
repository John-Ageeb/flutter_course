import 'package:flutter/material.dart';

import 'gameboard/gameboard.dart';
import 'gameboard/splash.dart';

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the existing class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app

    routes: {
      GameBoardScreen.routename: (context) {
        return GameBoardScreen();
      },
      Splash.routename: (context) {
        return Splash();
      }
    },
    initialRoute: Splash.routename, // start with which screen
  ));
}

//class MyApp{}
