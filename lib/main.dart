import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var rNumber = new Random();
  int LimgNumber = 1;
  int RimgNumber = 1;

  void rollDice() {
    setState(() {
      LimgNumber = rNumber.nextInt(6) + 1;
      RimgNumber = rNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
                print('Clicked on the first Object');
              },
              child: Image.asset('images/dice$LimgNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
                print('Clicked on the second element');
              },
              child: Image.asset('images/dice$RimgNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
