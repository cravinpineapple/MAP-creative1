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
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                ),
                Positioned(
                  left: 90.0,
                  top: 15.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () => print('Up'),
                    color: Colors.grey[850],
                    disabledColor: Colors.grey[500],
                    minWidth: 60.0,
                    height: 65.0,
                    child: Icon(
                      Icons.arrow_upward_rounded,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 15.0,
                  top: 93.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: null,
                    color: Colors.grey[850],
                    disabledColor: Colors.grey[500],
                    minWidth: 60.0,
                    height: 65.0,
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 90.0,
                  top: 170.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: null,
                    color: Colors.grey[850],
                    disabledColor: Colors.grey[500],
                    minWidth: 60.0,
                    height: 65.0,
                    child: Icon(
                      Icons.arrow_downward_rounded,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 165.0,
                  top: 93.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: null,
                    color: Colors.grey[850],
                    disabledColor: Colors.grey[500],
                    minWidth: 60.0,
                    height: 65.0,
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
