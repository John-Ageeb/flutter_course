/// StatelessWidget: used to drew screen but any changes will not appear or reflect to screen
/// StatelessWidget: any thing drew in screen using StatelessWidget will not change
/// StatelessWidget: is an immutable class
/// We can not use StatelessWidget with Calculator as we need to enter numbers and operators
/// We should use StatefulWidget if we need to redrew any thing in screen
/// We should add what we need to change it in "State" inside StatefulWidget
///

import 'package:flutter/material.dart';

import 'claculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static String routename = "calculator";

  @override
  State<StatefulWidget> createState() {
    // new StatefulWidget must be overrided
    return CalculatorScreenState(); // call my own function which include "  Widget build(BuildContext context)"
  }
}

class CalculatorScreenState extends State {
  String result = " ";
  String lhs = "";
  String savedOperator = "";

  void onDigitClick(String digit) {
    print("On Digit Click");
    result += digit;
    setState(() {});
  }

  void onOperatorClick(String operator) {
    if (savedOperator.isEmpty) {
      lhs = result;
      savedOperator = operator;
    } else {
      lhs = calculate(lhs, savedOperator, result);
      savedOperator = operator;
    }
    result = "";
    setState(() {});

    print("Result: $lhs");
  }

  void onEqualOperator(_) {
    result = calculate(lhs, savedOperator, result);
    setState(() {});
    lhs = "";
    savedOperator = "";
  }

  String calculate(String lhsString, String operator, String rhsString) {
    double lhs = double.parse(lhsString);
    double rhs = double.parse(rhsString);
    print("lhs = $lhs , rhs = $rhs,  savedOperator = $operator");

    if (operator == "+") {
      return (lhs + rhs).toString();
    } else if (operator == "X") {
      return (lhs * rhs).toString();
    } else if (operator == "-") {
      return (lhs - rhs).toString();
    } else {
      return (lhs / rhs).toString();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Center(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(result, style: TextStyle(fontSize: 40)),
                ),
                SizedBox(width: 10),
              ],
            ))),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClaculatorButton(
                    digit: "7",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "8",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "9",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "+",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClaculatorButton(
                    digit: "4",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "5",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "6",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "-",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClaculatorButton(
                    digit: "1",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "2",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "3",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "X",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClaculatorButton(
                    digit: ".",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "0",
                    onClick: onDigitClick,
                  ),
                  ClaculatorButton(
                    digit: "=",
                    onClick: onEqualOperator,
                  ),
                  ClaculatorButton(
                    digit: "/",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
