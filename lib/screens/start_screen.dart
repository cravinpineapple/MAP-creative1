import 'package:creative1/screens/battle_screen.dart';
import 'package:creative1/screens/move_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Select a Difficulty',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            ListTile(
              title: Text(
                'Easy',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green[400],
                ),
              ),
              onTap: () => {BattleScreen.dragonDamageMax = 4},
            ),
            ListTile(
              title: Text(
                'Medium',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.orange[300],
                ),
              ),
              onTap: () => {BattleScreen.dragonDamageMax = 8},
            ),
            ListTile(
              title: Text(
                'Hard',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.red[400],
                ),
              ),
              onTap: () => {BattleScreen.dragonDamageMax = 12},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    color: Colors.grey[700],
                    border: Border.all(
                      color: Colors.grey[700],
                      width: 15.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 2.0,
                        blurRadius: 8.0,
                        offset: Offset(10, 10),
                      ),
                    ],
                    gradient: RadialGradient(
                      colors: [
                        Colors.grey[300],
                        Colors.grey[700],
                      ],
                      radius: 0.44,
                    ),
                  ),
                  child: Text(
                    'Dungeon\nCrawl',
                    style: TextStyle(
                      color: Colors.red[400],
                      fontFamily: 'DnD',
                      fontSize: 125.0,
                      height: 0.7,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    color: Colors.grey[700],
                    border: Border.all(
                      color: Colors.grey[700],
                      width: 15.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 2.0,
                        blurRadius: 8.0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 325.0,
                        height: 200.0,
                      ),
                      Column(
                        // right: 45,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7.0, 20, 0.0, 0.0),
                            child: Text(
                              'Do you have what it takes to enter the dungeon?',
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Lato',
                                fontSize: 30.0,
                                height: 0.81,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 35.0,
                              ),
                              ButtonTheme(
                                buttonColor: Colors.grey[400],
                                minWidth: 125.0,
                                height: 65,
                                child: RaisedButton(
                                  onPressed: () => SystemNavigator.pop(),
                                  elevation: 15.0,
                                  splashColor: Colors.red[400],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      width: 3.0,
                                      color: Colors.red[400],
                                    ),
                                  ),
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.red[400],
                                      fontSize: 40.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 65.0,
                              ),
                              ButtonTheme(
                                buttonColor: Colors.grey[400],
                                minWidth: 125.0,
                                height: 65,
                                child: RaisedButton(
                                  onPressed: () => Navigator.pushNamed(
                                    context,
                                    MoveScreen.routeName,
                                  ),
                                  elevation: 15.0,
                                  splashColor: Colors.red[400],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      width: 3.0,
                                      color: Colors.red[400],
                                    ),
                                  ),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Colors.red[400],
                                      fontSize: 40.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
