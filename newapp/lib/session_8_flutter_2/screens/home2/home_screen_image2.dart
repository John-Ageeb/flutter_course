import 'package:flutter/material.dart';

Color purple = Color.fromRGBO(142, 41, 187, 1.0);
TextStyle defultText = TextStyle(fontSize: 20, color: Colors.white);

class HomeScreenImages2 extends StatelessWidget {
  String text;
  String imagePath;

  HomeScreenImages2({required this.text, required this.imagePath});

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(imagePath),
        Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
      ],
    );
  }
}
