import 'package:copycat_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class TextCon extends StatelessWidget {
  const TextCon(
      {super.key, required this.deepColor, required this.brightColor});

  const TextCon.purple({super.key})
      : deepColor = Colors.deepPurple,
        brightColor = Colors.indigo;

  final Color deepColor;
  final Color brightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            deepColor,
            brightColor,
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
