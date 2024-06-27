import 'dart:math';

import 'package:copycat_app/widgets/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 2;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/dice-$activeDiceImage.png',
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(
          width: 50,
          height: 25,
        ),
        TextButton(
          style: const ButtonStyle(
            overlayColor: MaterialStatePropertyAll(
              Colors.blueAccent,
            ),
          ),
          onPressed: rollDice,
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
