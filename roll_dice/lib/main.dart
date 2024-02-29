import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Roll Dice App',
      home: Scaffold(
        body: RollDiceContainer(
          startNumber: 5,
        ),
      )
    );
  }
}
