import 'package:flutter/material.dart';

import '../utils/utils.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  /// Update the dices
  void updateDices() {
    setState(() {
      leftDiceNumber = MathUtils.generateRandomInt(6) + 1;
      rightDiceNumber = MathUtils.generateRandomInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: updateDices,
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
