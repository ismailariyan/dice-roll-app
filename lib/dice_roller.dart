import 'package:flutter/material.dart';
import 'dart:math';
  final randomizer = Random();
  //The statfulwidget are divied into 2 parts 
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  //this method will return the private class
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;
  void rolldice() {
  // the setState is an important function 
  //this calls the build method everytime to redraw the screen 
    setState(() {
      // here we the 'randomizer' is a ojbect of the Random class which will generate a value
      //here nextInt is setting the upper limit and this range is 0<= x < 6 so to exclude 0 and include 6 we added 1
       currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Column(
      //Normally the column will take all the available space but 
      // using the mainAxisSize we can make to take min size
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