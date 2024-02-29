import 'package:flutter/material.dart';
import 'dart:math';

const String IMAGE_PREFIX = "assets/imgs";

class RollDiceContainer extends StatefulWidget {
  const RollDiceContainer({super.key, required this.startNumber});

  final int startNumber;

  @override
  State<RollDiceContainer> createState() {
    return _RollDiceState(startNumber: startNumber);
  }
}

class _RollDiceState extends State<RollDiceContainer> {
  _RollDiceState({required int startNumber}) {
    actualNumber = startNumber;
  }

  int actualNumber = 1;

  void _rollDice() {
    setState(() {
      actualNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "$IMAGE_PREFIX/dice-$actualNumber.png",
              width: 200,
            ),
            TextButton(
              onPressed: _rollDice,
              child: const Text(
                "Roll!",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
