import 'package:creative1/model/dungeon.dart';
import 'package:creative1/screens/battle_screen.dart';
import 'package:creative1/screens/end_screen.dart';
import 'package:creative1/screens/move_screen.dart';
import 'package:creative1/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  Dungeon.initDungeon();
  runApp(Creative1App());
}

class Creative1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          size: 50.0,
        ),
        buttonTheme: ButtonThemeData(
          minWidth: 25.0,
          height: 25.0,
          buttonColor: Colors.grey[850],
          disabledColor: Colors.grey[350],
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        MoveScreen.routeName: (context) => MoveScreen(),
        BattleScreen.routeName: (context) => BattleScreen(),
        EndScreen.routeName: (context) => EndScreen(),
      },
    );
  }
}
