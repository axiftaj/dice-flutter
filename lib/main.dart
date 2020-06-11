import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
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
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 2 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1, //this means that it will takes the twice of szie of image
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1 ;
                  print('dice number $leftDiceNumber');

                });
              },
              child: Image(
                  image: AssetImage("images/dice$leftDiceNumber.png")),
            ),
          ),
          Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
                print("right button pressed");
              },
                child: Image(
                    image: AssetImage("images/dice$rightDiceNumber.png")),
              )

          )
        ],
      ),
    );
  }
}

