import 'package:flutter/cupertino.dart';

/// the main issue in the last example code in last session that the number of row in code is very high
/// we need to reduce code
///Any existing widget in fluteer is an extended from exisiting class in fluteer
///We neeed to cretae own widget and it should be extended "StatelessWidget" and we need to override mehod inside "StatelessWidget" as it is an abstract class

void main() {
  //runApp(MyApp()); //error appear as My App is not extended from the exisiting class
  //runApp(MyApp()); // error removed
  runApp(MyApp());
}

//class MyApp{}
class MyApp extends StatelessWidget {
  // we must override exising methode inside abstract class
  Widget build(BuildContext context) {
    // abstract methode
    return Text("123"); // return Widget
  }
}
