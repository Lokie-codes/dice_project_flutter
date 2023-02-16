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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () { print('Left button pressed'); },
                child: Image.asset(
                  'images/dice1.png',
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () { print('Right button pressed'); },
                child: Image.asset(
                  'images/dice2.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
