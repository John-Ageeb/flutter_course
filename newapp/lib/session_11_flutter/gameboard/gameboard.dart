import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newapp/session_11_flutter/dm.dart';
import 'package:newapp/session_11_flutter/gameboard/xo_button.dart';

class GameBoardScreen extends StatefulWidget {
  static String routename = "gameboard";

  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    ModalRoute modalRoute = ModalRoute.of(context)!;
    GameBoardArgs arguments = modalRoute.settings.arguments! as GameBoardArgs;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("XO!"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${arguments.player1}: $player1Score",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "${arguments.player2}: $player2Score",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  XOButton(symbol: board[0], Onclick: onPalyerTurn, index: 0),
                  XOButton(symbol: board[1], Onclick: onPalyerTurn, index: 1),
                  XOButton(symbol: board[2], Onclick: onPalyerTurn, index: 2),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  XOButton(symbol: board[3], Onclick: onPalyerTurn, index: 3),
                  XOButton(symbol: board[4], Onclick: onPalyerTurn, index: 4),
                  XOButton(symbol: board[5], Onclick: onPalyerTurn, index: 5),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  XOButton(symbol: board[6], Onclick: onPalyerTurn, index: 6),
                  XOButton(symbol: board[7], Onclick: onPalyerTurn, index: 7),
                  XOButton(symbol: board[8], Onclick: onPalyerTurn, index: 8),
                ],
              ),
            ),
          ],
        ));
  }

  void onPalyerTurn(int index) {
    if (board[index].isNotEmpty) {
      return;
    }
    String symbol = counter % 2 == 0 ? "O" : "X";
    board[index] = symbol;
    if (checkWinner()) {
      if (symbol == "O") {
        player1Score++;
      } else {
        player2Score++;
      }
      clearBoard();
      Fluttertoast.showToast(
          msg: "Player${symbol == "O" ? "1" : "2"} Win",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);

      return;
    }
    if (counter == 8) {
      clearBoard();
      return;
    }

    counter++;

    setState(() {});
  }

  bool checkWinner() {
    if (board[0].isNotEmpty && board[0] == board[1] && board[1] == board[2]) {
      return true;
    }
    if (board[3].isNotEmpty && board[3] == board[4] && board[4] == board[5]) {
      return true;
    }
    if (board[6].isNotEmpty && board[6] == board[7] && board[7] == board[8]) {
      return true;
    }

    if (board[0].isNotEmpty && board[0] == board[3] && board[3] == board[6]) {
      return true;
    }
    if (board[1].isNotEmpty && board[1] == board[4] && board[4] == board[7]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[5] && board[5] == board[8]) {
      return true;
    }

    if (board[0].isNotEmpty && board[0] == board[4] && board[4] == board[8]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[4] && board[4] == board[6]) {
      return true;
    } else {
      return false;
    }
  }

  void clearBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    setState(() {});
    counter = 0;
  }
}
