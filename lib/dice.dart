import 'dart:math';

import 'package:flutter/material.dart';

class Diceapp extends StatefulWidget {
  const Diceapp({Key? key}) : super(key: key);

  @override
  _DiceappState createState() => _DiceappState();
}

class _DiceappState extends State<Diceapp> {
  int leftdicenumber=1;
  int rightdicenumber=2;
  void update() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
        children: [
           
          Expanded(child: Padding(padding: const EdgeInsets.all(30.0),
          child: TextButton(onPressed: () {
            update();
          }, child: Image.asset('image/dice$leftdicenumber.jpeg')))),

          Expanded(child: Padding(padding: const EdgeInsets.all(30.0),
          child: TextButton(onPressed: () {
            update();
          }, child: Image.asset('image/dice$rightdicenumber.jpeg')))),
        ],
      ),

    );
  }
}
