import 'package:flutter/material.dart';
import 'dart:math';
  final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;
  void rolldice() {
   
    setState(() {
       currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll dice'))
      ],
    );
  }
}
