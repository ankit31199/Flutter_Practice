import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Dice Game')),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.redAccent,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber=5;
  int rightDiceNumber=1;
  void changeDiceFace(){
    leftDiceNumber =Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceFace();

                  });
                },
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceFace();


                  });
                },
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
