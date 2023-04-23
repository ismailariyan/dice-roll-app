import 'package:flutter/material.dart';
import 'package:dice_rolling/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 220, 7, 7),Color.fromARGB(255, 52, 36, 220)]),
      ),
    ),
  );
}
