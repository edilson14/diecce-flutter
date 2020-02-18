import 'package:flutter/material.dart';
import '../utils/utils.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = MathUtils.generateRandomInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = MathUtils.generateRandomInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
