import 'package:creative1/model/dungeon.dart';
import 'package:creative1/screens/battle_screen.dart';
import 'package:flutter/material.dart';

class MoveScreen extends StatelessWidget {
  static const routeName = '/moveScreen';
  BuildContext currentContext;

  var isUpDisabled = true;
  var isRightDisabled = true;
  var isDownDisabled = true;
  var isLeftDisabled = true;
  var item1 = 'images/blank.png';
  var item2 = 'images/blank.png';
  var item3 = 'images/blank.png';
  var item4 = 'images/blank.png';
  var item5 = 'images/blank.png';

  String facingImagePath = 'images/facingUp.png';
  String roomImagePath = 'images/straightUpDown.png';

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

  updateRoomPicture() {
    switch (Dungeon.currentNode.nodeID) {
      case 0:
      case 19:
      case 20:
      case 21:
        roomImagePath = 'images/straightUpDown.png';
        break;
      case 1:
        roomImagePath = 'images/fourWay.png';
        break;
      case 3:
      case 16:
        roomImagePath = 'images/topLeftCorner.png';
        break;
      case 2:
      case 6:
        roomImagePath = 'images/tetrisRight.png';
        break;
      case 9:
      case 17:
        roomImagePath = 'images/bottomRightCorner.png';
        break;
      case 18:
      case 13:
        roomImagePath = 'images/bottomLeftCorner.png';
        break;
      case 15:
      case 12:
        roomImagePath = 'images/tetrisDown.png';
        break;
      case 8:
        roomImagePath = 'images/tetrisUp.png';
        break;
      case 7:
        roomImagePath = 'images/helmet.png';
        break;
      case 11:
        roomImagePath = 'images/tetrisLeft.png';
        break;
      case 4:
        roomImagePath = 'images/deadEnd.png';
        break;
      case 22:
        roomImagePath = 'images/sunglasses.png';
        break;
      case 5:
        roomImagePath = 'images/bear.png';
        break;
      case 14:
        roomImagePath = 'images/sword.png';
        break;
      case 10:
        roomImagePath = 'images/potion.png';
        break;
    }
  }

  updateItemFrames() {
    item1 = Dungeon.hasBear ? 'images/bear.png' : 'images/blank.png';
    item2 = Dungeon.hasHelmet ? 'images/helmet.png' : 'images/blank.png';
    item3 = Dungeon.hasPotion ? 'images/potion.png' : 'images/blank.png';
    item4 = Dungeon.hasSword ? 'images/sword.png' : 'images/blank.png';
    item5 = Dungeon.hasSunglasses ? 'images/sunglasses.png' : 'images/blank.png';
  }

  moveUp() {
    if (Dungeon.currentNode.nodeID == 11) {
      Navigator.pushNamed(currentContext, BattleScreen.routeName);
      return;
    }

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

  @override
  Widget build(BuildContext context) {
    currentContext = context;
    checkDirections();
    updateFacingImage();
    equipItems();
    updateRoomPicture();
    updateItemFrames();

    var itemBackgroundSize = 50.0;
    var itemSize = 45.0;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35.0,
          ),
          Stack(
            children: [
              // row for item backgrounds
              Row(
                children: [
                  SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    width: itemBackgroundSize,
                    height: itemBackgroundSize,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: itemBackgroundSize,
                    height: itemBackgroundSize,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: itemBackgroundSize,
                    height: itemBackgroundSize,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: itemBackgroundSize,
                    height: itemBackgroundSize,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: itemBackgroundSize,
                    height: itemBackgroundSize,
                    color: Colors.grey[400],
                  ),
                ],
              ),
              // item frame pictures
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  2.5,
                  2.5,
                  0.0,
                  0.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    Container(
                      width: itemSize,
                      height: itemSize,
                      child: Image.asset(item1),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: itemSize,
                      height: itemSize,
                      child: Image.asset(item2),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: itemSize,
                      height: itemSize,
                      child: Image.asset(item3),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: itemSize,
                      height: itemSize,
                      child: Image.asset(item4),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: itemSize,
                      height: itemSize,
                      child: Image.asset(item5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            roomImagePath,
            height: 150.0,
          ),
          SizedBox(
            height: 20.0,
          ),

          /* ********** */
          /*  TEXT BOX  */
          /* ********** */
          
          Container(
            width: 350.0,
            height: 125.0,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 8.0, 10.0, 0.0),
              child: Text(
                Dungeon.currentNode.text,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontFamily: 'Lato',
                  fontSize: 19.0,
                ),
              ),
            ),
          ),

          // spacer
          SizedBox(
            height: 20.0,
          ),


          /* **************** */
          /*  PLAYER CONTROLS */
          /* **************** */

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
