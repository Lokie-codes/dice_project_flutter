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
        body: DicePage(),
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 5;
                    rightDiceNumber = 5;
                  });                  
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                 setState(() {
                    leftDiceNumber = 5;
                    rightDiceNumber = 5;
                  });
                },
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
