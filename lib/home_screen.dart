
import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) +
                          1; //+1 to be from 1 to 6 instead of from 0 to 5
                    });
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Text(
                'trig both',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
