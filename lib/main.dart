import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Text('Dicer App'),
          backgroundColor: Colors.blueGrey
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
    var leftDiceNumber = Random().nextInt(6) + 1;
    var rightDiceNumber = Random().nextInt(6) + 1;

void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

}    

 @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(  
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });

              },
              child: Image.asset('images/dice$rightDiceNumber.png')
              ),
          ),
        ],
      ),
    );
  } // widget build
} // state
