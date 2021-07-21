
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
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
 const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                //setState() is a method that enables changes in the button to affect all the other state in the program.
                setState(() {
                  leftButtonNumber = Random().nextInt(6) + 1;
                });
                print('left button was pressed');
              },
              child: Image.asset(
                  'images/dice$leftButtonNumber.png'
              ),
            ),
          ),
          // Expanded widget enables another image like images (), to take up the size it needs.
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  rightButtonNumber = Random().nextInt(6) + 1;
                });
                print('right button was pressed');
              },
              child: Image.asset('images/dice$rightButtonNumber.png'),
            ),
          ),
        ],
      ),
    );

  }
}

