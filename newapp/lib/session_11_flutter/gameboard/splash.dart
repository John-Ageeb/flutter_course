import 'package:flutter/material.dart';
import 'package:newapp/session_11_flutter/dm.dart';
import 'package:newapp/session_11_flutter/gameboard/gameboard.dart';

class Splash extends StatelessWidget {
  static String routename = "splash";
  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Spalsh"),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Player1"),
              onChanged: (text) {
                player1 = text;
                print(player1);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Player2"),
              onChanged: (text) {
                player2 = text;
                print(player2);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, GameBoardScreen.routename,
                      arguments: GameBoardArgs(player1, player2));
                },
                child: Text("Start"))
          ],
        ));
  }
}
