import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Role Dice 🎲'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        roll();
                      },
                      child: Image.asset(
                        'images/dice$leftDiceNumber.png',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        roll();
                      },
                      child: Image.asset(
                        'images/dice$rightDiceNumber.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              roll();
            },
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoSlab',
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Roll now',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
