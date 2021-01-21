import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dungeon Crawl'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.grey[700],
                    border: Border.all(
                      color: Colors.grey[700],
                      width: 15.0,
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
                // Text(
                //   'Crawl',
                //   style: TextStyle(
                //     color: Colors.red[400],
                //     fontFamily: 'DnD',
                //     fontSize: 100.0,
                //     height: 0.5,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
