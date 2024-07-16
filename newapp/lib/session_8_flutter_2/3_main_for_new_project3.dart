/// we must studt 4.dart first
/// to navigate between screen, we can use "routes"
///we must add "initialRoute:" to detrmine whic screen appear firstlly
///

import 'package:flutter/material.dart';
import 'package:newapp/session_8_flutter_2/screens/home2/home_screen2.dart';
import 'package:newapp/session_8_flutter_2/screens/login/login.dart';
import 'package:newapp/session_8_flutter_2/screens/register/register.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the exisiting class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app

    routes: {
      "home2": (context) {
        return HomeScreen2();
      },
      "login": (context) {
        return LoginScreen();
      },
      "register": (context) {
        return RegisterScreen();
      }
    },
    initialRoute: "login", // start with which screen
  ));
}

//class MyApp{}
