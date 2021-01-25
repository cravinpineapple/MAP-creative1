import 'package:creative1/model/dungeon.dart';
import 'package:creative1/screens/move_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BattleScreen extends StatelessWidget {
  static const routeName = '/battleScreen';

  static var dragonHP = 340.0;
  static var playerHP = 340.0;
  static var playerDamageDealt = 0;
  static var dragonDamageDealt = 0;

  var playerDamageMax = 1;
  var dragonDamageMax = 8;
  var currentContext;

  attack() {
    var rng = new Random();

    if (Dungeon.hasBear) playerDamageMax += 1;
    if (Dungeon.hasSword) playerDamageMax += 3;
    if (Dungeon.hasSunglasses) playerDamageMax += 10;

    if (Dungeon.hasHelmet) dragonDamageMax -= 3;
    if (Dungeon.hasPotion) dragonDamageMax -= 1;

    playerDamageDealt = rng.nextInt(playerDamageMax * 17);
    dragonDamageDealt = rng.nextInt(dragonDamageMax * 17);

    dragonHP -= playerDamageDealt;
    playerHP -= dragonDamageDealt;

    if (playerHP <= 0) {
      // EndScreen.Won = false;
      // Navigator.pushNamed(currentContext, EndScreen.routeName);
    } else if (dragonHP <= 0) {
      // EndScreen.Won = true;
      // Navigator.pushNamed(currentContext, EndScreen.routeName);
    } else
      Navigator.pushNamed(currentContext, BattleScreen.routeName);
  }

  run() {
    Dungeon.facing = 2;
    Navigator.pushNamed(currentContext, MoveScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    currentContext = context;

    return Scaffold(
      body: Stack(
        children: [
          /* ********************/
          /*  DRAGON HEALTH BAR */
          /* ****************** */

          Positioned(
            top: 25.0,
            left: 35.0,
            child: Text(
              'Dragon Health Bar',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Lato',
                fontSize: 20.0,
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 35.0,
            child: Container(
              height: 30.0,
              width: 340.0,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 50.0,
            left: 35.0,
            child: Container(
              height: 30.0,
              width: dragonHP,
              color: Colors.green,
            ),
          ),

          /* ****************** */
          /*  PLAYER HEALTH BAR */
          /* ****************** */

          Positioned(
            top: 475.0,
            left: 35.0,
            child: Text(
              'Player Health Bar',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Lato',
                fontSize: 20.0,
              ),
            ),
          ),
          Positioned(
            top: 500.0,
            left: 35.0,
            child: Container(
              height: 30.0,
              width: 340.0,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 500.0,
            left: 35.0,
            child: Container(
              height: 30.0,
              width: playerHP,
              color: Colors.green,
            ),
          ),

          /* ************* */
          /*  DRAGON IMAGE */
          /* ************* */

          Positioned(
            top: 80.0,
            left: 70.0,
            child: Image.asset(
              'images/dragon.png',
              height: 270.0,
            ),
          ),

          /* **************** */
          /*  COMBAT LOG TEXT */
          /* **************** */

          Positioned(
            top: 350.0,
            left: 25.0,
            child: Container(
              width: 350.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0.0),
                child: Text(
                  'You hit the dragon for ${(playerDamageDealt / 17).toStringAsFixed(2)} damage!\nThe Dragon hits you for ${(dragonDamageDealt / 17).toStringAsFixed(2)} damage.',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontFamily: 'Lato',
                    fontSize: 21.0,
                    height: 1.3,
                  ),
                ),
              ),
            ),
          ),

          /* ******************* */
          /*  BUTTONS HEALTH BAR */
          /* ******************* */

          // ATTACK BUTTON
          Positioned(
            top: 545.0,
            left: 15.0,
            child: Row(
              children: [
                ButtonTheme(
                  buttonColor: Colors.grey[400],
                  minWidth: 180.0,
                  height: 125,
                  child: RaisedButton(
                    onPressed: () => attack(),
                    elevation: 15.0,
                    splashColor: Colors.red[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        width: 5.0,
                        color: Colors.grey[900],
                      ),
                    ),
                    child: Text(
                      'Attack',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 20.0,
                ),

                // RUN BUTTON
                ButtonTheme(
                  buttonColor: Colors.grey[400],
                  minWidth: 180.0,
                  height: 125,
                  child: RaisedButton(
                    onPressed: () => run(),
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
                      'Run',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
