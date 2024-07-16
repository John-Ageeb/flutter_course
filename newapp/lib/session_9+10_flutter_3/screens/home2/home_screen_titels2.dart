///take Expanded Containers in the first row (Mgazine and News) and add them in new Widget called "HomeScreenTitels"
/// call the new widget "HomeScreenTitels" in the home_screen file
/// we have the same titel for both Expanded (News) for both Widget
/// to cahnge a titel for the same repeted widget, add the variable titel to the class contractor
/// also add the required text in the constrator while calling class
///
///

import 'package:flutter/material.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

class HomeScreenTitels2 extends StatelessWidget {
  String text;

  HomeScreenTitels2(this.text);

  Widget build(BuildContext context) {
    // abstract methode
    return Expanded(
      // take a maxiumem of allowed size
      flex: 50,

      child: Container(
          padding: EdgeInsets.all(18),
          color: purple,
          child: Text(text,
              style: defultText,
              textAlign: TextAlign.center) // change "News" to variable "text"

          ),
    );
  }
}
