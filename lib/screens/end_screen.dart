import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  static const routeName = '/endScreen';

  static var gameWon;

  @override
  Widget build(BuildContext context) {
    var text = gameWon ? 'You Win! :)' : 'You lose :(';
    var textColor = gameWon ? Colors.green[400] : Colors.red[400];

    return Scaffold(
      body: Column(
        children: [
          Text(
            'You Win!',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
