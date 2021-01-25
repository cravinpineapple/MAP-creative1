import 'package:creative1/screens/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  static const routeName = '/endScreen';

  static var gameWon = false;

  @override
  Widget build(BuildContext context) {
    var text = gameWon ? 'You Win' : 'You lose';
    var textColor = gameWon ? Colors.green[400] : Colors.red[400];

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'DnD',
                fontSize: 170.0,
                color: textColor,
                height: 0.8,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100.0,
            ),
            ButtonTheme(
              buttonColor: Colors.grey[400],
              minWidth: 180.0,
              height: 175,
              child: RaisedButton(
                onPressed: () => Navigator.pushNamed(context, StartScreen.routeName),
                elevation: 15.0,
                splashColor: Colors.blue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    width: 5.0,
                    color: Colors.grey[900],
                  ),
                ),
                child: Text(
                  'Return to Menu',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 40.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
