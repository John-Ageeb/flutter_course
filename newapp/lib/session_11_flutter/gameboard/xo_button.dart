import 'package:flutter/material.dart';

class XOButton extends StatelessWidget {
  String symbol;
  Function Onclick;
  int index;

  XOButton({required this.symbol, required this.Onclick, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.all(4),
            child: ElevatedButton(
                onPressed: () {
                  Onclick(index);
                },
                child: Text(
                  symbol,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ))));
  }
}
