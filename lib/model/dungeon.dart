class DungeonNode {
  var nodeID; // integer
  var text;
  var item; // -1 = Nothing, 0 = Sword, 1 = Helmet, 2 = Potion, 3 = Sunglasses, 4 = Teddy Bear
  var upID;
  var rightID;
  var downID;
  var leftID;

  DungeonNode(
      {int nodeID,
      int item,
      String text,
      var upID,
      var rightID,
      var downID,
      var leftID}) {
    this.nodeID = nodeID;
    this.item = item;
    this.text = text;
    this.upID = upID;
    this.rightID = rightID;
    this.downID = downID;
    this.leftID = leftID;
  }

  printNodeID() {
    print(nodeID);
  }

  getRoomUpID() {}
}

class Dungeon {
  static var hasSword = false;
  static var hasHelmet = false;
  static var hasPotion = false;
  static var hasSunglasses = false;
  static var hasBear = false;

  static var currentNode;
  static var prevNode;

  static var facing = 0; // 0 = North, 1 = East, 2 = South, 3 = West

  static Map<dynamic, dynamic> dungeonMap;

  static initDungeon() {
    dungeonMap[17] = DungeonNode(
      nodeID: 17,
      item: -1,
      text: 'Start',
      upID: 00,
      rightID: null,
      downID: null,
      leftID: null,
    );

    dungeonMap[0] = DungeonNode(
      nodeID: 0,
      item: -1,
      text: 'Room 00',
      upID: 06,
      rightID: 03,
      downID: null,
      leftID: 01,
    );

    dungeonMap[1] = DungeonNode(
      nodeID: 1,
      item: -1,
      text: 'Room 01',
      upID: 06,
      rightID: 00,
      downID: 18,
      leftID: null,
    );

    dungeonMap[6] = DungeonNode(
      nodeID: 06,
      item: -1,
      text: 'Room 06',
      upID: null,
      rightID: 22,
      downID: 1,
      leftID: null,
    );

    dungeonMap[22] = DungeonNode(
      nodeID: 22,
      item: -1,
      text: 'Room 22 (Dead End)',
      upID: null,
      rightID: null,
      downID: null,
      leftID: 06,
    );

    dungeonMap[18] = DungeonNode(
      nodeID: 18,
      item: 4,
      text: 'Room 04 (Teddy Bear)',
      upID: 01,
      rightID: null,
      downID: null,
      leftID: null,
    );
  }

  Dungeon() {
    test2();
  }

  void test2() {
    print('hello!');
  }
}
