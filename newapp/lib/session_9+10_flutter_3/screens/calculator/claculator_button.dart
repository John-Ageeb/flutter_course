import 'package:flutter/material.dart';

class ClaculatorButton extends StatelessWidget {
  final String digit;
  Function onClick;

  ClaculatorButton({required this.digit, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
          onPressed: () {
            onClick(digit);
          },
          child: Text((digit), style: TextStyle(fontSize: 25))),
    ));
  }
}
