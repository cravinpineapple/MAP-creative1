import 'package:flutter/material.dart';

class MoveScreen extends StatelessWidget {
  static const routeName = '/moveScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 380.0,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 250.0,
                  height: 250.0,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    RaisedButton.icon(
                      icon: Icon(
                        Icons.arrow_upward_rounded,
                        size: 35.0,
                      ),
                      onPressed: () => print('Up'),
                      label: Text('North'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
