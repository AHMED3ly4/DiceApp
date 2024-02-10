import 'package:diceee/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DiceApp());
}
class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

