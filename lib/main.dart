import 'package:diceapp/dice.dart';
import 'package:diceapp/diceapp2.dart';
import 'package:flutter/material.dart';

void main()  => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text('Dice App'),
    ),
    backgroundColor: Colors.red,
    body: Diceapp2(),
  ),
));