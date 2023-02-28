import 'dart:math';

import 'package:flutter/material.dart';

class Diceapp2 extends StatefulWidget {
  const Diceapp2({Key? key}) : super(key: key);

  @override
  _Diceapp2State createState() => _Diceapp2State();
}

class _Diceapp2State extends State<Diceapp2> {
  int leftdicenumber = 1;

  void update(int rightdicenumber) {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
    });
  }
  int rightdicenumber = 2;
  void updown(int leftdicenumber) {
        setState(() {
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
                update(leftdicenumber);
              }, child: Image.asset('image/dice$leftdicenumber.jpeg')))),

          Expanded(child: Padding(padding: const EdgeInsets.all(30.0),
              child: TextButton(onPressed: () {
                updown(rightdicenumber);
              }, child: Image.asset('image/dice$rightdicenumber.jpeg')))),
        ],
      ),

    );
  }
}

