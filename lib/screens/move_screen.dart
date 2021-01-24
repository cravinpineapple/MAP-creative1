import 'package:creative1/model/dungeon.dart';
import 'package:flutter/material.dart';

class MoveScreen extends StatelessWidget {
  static const routeName = '/moveScreen';
  BuildContext currentContext;

  var isUpDisabled = true;
  var isRightDisabled = true;
  var isDownDisabled = true;
  var isLeftDisabled = true;

  String facingImagePath = 'images/facingUp.png';

  checkDirections() {
    if (Dungeon.currentNode.upID != null) isUpDisabled = false;
    if (Dungeon.currentNode.rightID != null) isRightDisabled = false;
    if (Dungeon.currentNode.downID != null) isDownDisabled = false;
    if (Dungeon.currentNode.leftID != null) isLeftDisabled = false;
  }

  equipItems() {
    switch (Dungeon.currentNode.nodeID) {
      case 5:
        Dungeon.hasBear = true;
        break;
      case 7:
        Dungeon.hasHelmet = true;
        break;
      case 10:
        Dungeon.hasPotion = true;
        break;
      case 14:
        Dungeon.hasSword = true;
        break;
      case 22:
        Dungeon.hasSunglasses = true;
        break;
    }
  }

  updateFacingImage() {
    switch (Dungeon.facing) {
      case 0:
        facingImagePath = 'images/facingUp.png';
        break;
      case 1:
        facingImagePath = 'images/facingRight.png';
        break;
      case 2:
        facingImagePath = 'images/facingDown.png';
        break;
      case 3:
        facingImagePath = 'images/facingLeft.png';
        break;
    }
  }

  moveUp() {
    Navigator.pushNamed(currentContext, MoveScreen.routeName);
    Dungeon.moveUp();
  }

  moveRight() {
    Navigator.pushNamed(currentContext, MoveScreen.routeName);
    Dungeon.moveRight();
  }

  moveDown() {
    Navigator.pushNamed(currentContext, MoveScreen.routeName);
    Dungeon.moveDown();
  }

  moveLeft() {
    Navigator.pushNamed(currentContext, MoveScreen.routeName);
    Dungeon.moveLeft();
  }

  test() {
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    currentContext = context;
    checkDirections();
    updateFacingImage();
    equipItems();

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
                  // UP ARROW

                  left: 90.0,
                  top: 15.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: isUpDisabled ? null : moveUp,
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
                  // LEFT ARROW

                  left: 15.0,
                  top: 93.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: isLeftDisabled ? null : moveLeft,
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
                  // DOWN ARROW

                  left: 90.0,
                  top: 170.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: isDownDisabled ? null : moveDown,
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
                  // RIGHT ARROW

                  left: 165.0,
                  top: 93.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: isRightDisabled ? null : moveRight,
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
                Positioned(
                  // Direction Indicator

                  left: 99.0,
                  top: 99.0,
                  child: Image.asset(
                    facingImagePath,
                    height: 50.0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
