/// to enhance code, we should not use screen name in route statement to reduce mistakes
///Create a static String variable in each screen and call it in roure statement

import 'package:flutter/material.dart';
import 'package:newapp/session_9+10_flutter_3/screens/calculator/calculator_screen.dart';
import 'package:newapp/session_9+10_flutter_3/screens/home2/home_screen2.dart';
import 'package:newapp/session_9+10_flutter_3/screens/login/login.dart';
import 'package:newapp/session_9+10_flutter_3/screens/register/register.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the existing class
  //runApp(MyApp()); // error removed
  runApp(MaterialApp(
    // the first function in app

    routes: {
      HomeScreen2.routename: (context) {
        return HomeScreen2();
      },
      LoginScreen.routename: (context) {
        return LoginScreen();
      },
      RegisterScreen.routename: (context) {
        return RegisterScreen();
      },
      CalculatorScreen.routename: (context) {
        return CalculatorScreen();
      }
    },
    initialRoute: CalculatorScreen.routename, // start with which screen
  ));
}

//class MyApp{}
