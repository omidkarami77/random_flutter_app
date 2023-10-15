import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  int getRandomInteger() {
    final random = Random();
    int number = 1 + random.nextInt(5);
    return number;
    print(number);
  }

  rollDice() {
    setState(() {
      activeDiceImage = "assets/images/dice-${getRandomInteger()}.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(5),
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              rollDice();
            },
            child: Text("Roll Dice "))
      ],
    );
  }
}
