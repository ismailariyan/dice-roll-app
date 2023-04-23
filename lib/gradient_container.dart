import 'package:dice_rolling/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  @override  
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: DiceRoller(), 
      ),
    );
  }
}
