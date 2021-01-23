class DungeonNode {
  var nodeID; // integer
  var text;
  var itemID; // -1 = Nothing, 0 = Sword, 1 = Helmet, 2 = Potion, 3 = Sunglasses, 4 = Teddy Bear
  var upID;
  var rightID;
  var downID;
  var leftID;

  DungeonNode(
      {int nodeID,
      int itemID,
      String text,
      var upID,
      var rightID,
      var downID,
      var leftID}) {
    this.nodeID = nodeID;
    this.itemID = itemID;
    this.text = text;
    this.upID = upID;
    this.rightID = rightID;
    this.downID = downID;
    this.leftID = leftID;
  }

  printNodeID() {
    print(nodeID);
  }
}

class Dungeon {
  static var hasSword = false;
  static var hasHelmet = false;
  static var hasPotion = false;
  static var hasSunglasses = false;
  static var hasBear = false;

  static DungeonNode currentNode = dungeonMap[0];
  static var prevNode;

  static var facing = 0; // 0 = North, 1 = East, 2 = South, 3 = West

  static Map<dynamic, dynamic> dungeonMap;

  static var dragonAttack = 5;
  static var playerAttack = 1;

  static moveUp() {
    prevNode = currentNode;
    currentNode = dungeonMap[currentNode.leftID];
  }

  static moveLeft() {
    prevNode = currentNode;
    currentNode = currentNode.leftID;
  }

  static initDungeon() {
    dungeonMap[0] = DungeonNode(
      nodeID: 0,
      itemID: -1,
      text: 'Start',
      upID: 1,
      rightID: null,
      downID: null,
      leftID: null,
    );

    dungeonMap[1] = DungeonNode(
      nodeID: 1,
      itemID: -1,
      text: 'Room 01',
      upID: 6,
      rightID: 8,
      downID: null,
      leftID: 2,
    );

    dungeonMap[2] = DungeonNode(
      nodeID: 2,
      itemID: -1,
      text: 'Room 02',
      upID: 3,
      rightID: 1,
      downID: 5,
      leftID: null,
    );

    dungeonMap[3] = DungeonNode(
      nodeID: 3,
      itemID: -1,
      text: 'Room 03',
      upID: null,
      rightID: 4,
      downID: 2,
      leftID: null,
    );

    dungeonMap[4] = DungeonNode(
      nodeID: 4,
      itemID: -1,
      text: 'Room 04 (Dead End)',
      upID: null,
      rightID: null,
      downID: null,
      leftID: 3,
    );

    dungeonMap[5] = DungeonNode(
      nodeID: 5,
      itemID: 4,
      text: 'Room 05 (Teddy Bear)',
      upID: 2,
      rightID: null,
      downID: null,
      leftID: null,
    );

    dungeonMap[6] = DungeonNode(
      nodeID: 6,
      itemID: -1,
      text: 'Room 06',
      upID: 15,
      rightID: 7,
      downID: 1,
      leftID: null,
    );

    dungeonMap[7] = DungeonNode(
      nodeID: 7,
      itemID: 1,
      text: 'Room 07 (Point Helmet)',
      upID: null,
      rightID: null,
      downID: 8,
      leftID: 6,
    );

    dungeonMap[8] = DungeonNode(
      nodeID: 8,
      itemID: -1,
      text: 'Room 08',
      upID: 7,
      rightID: 9,
      downID: null,
      leftID: 1,
    );

    dungeonMap[9] = DungeonNode(
      nodeID: 9,
      itemID: -1,
      text: 'Room 9',
      upID: 10,
      rightID: null,
      downID: null,
      leftID: 8,
    );

    dungeonMap[10] = DungeonNode(
      nodeID: 10,
      itemID: 2,
      text: 'Room 10',
      upID: 11,
      rightID: null,
      downID: 9,
      leftID: null,
    );

    dungeonMap[11] = DungeonNode(
      nodeID: 11,
      itemID: -1,
      text: 'Room 11',
      upID: 23,
      rightID: null,
      downID: 10,
      leftID: 12,
    );

    dungeonMap[12] = DungeonNode(
      nodeID: 12,
      itemID: -1,
      text: 'Room 12',
      upID: null,
      rightID: 11,
      downID: 13,
      leftID: 15,
    );

    dungeonMap[13] = DungeonNode(
      nodeID: 13,
      itemID: -1,
      text: 'Room 13',
      upID: 12,
      rightID: 14,
      downID: null,
      leftID: null,
    );

    dungeonMap[14] = DungeonNode(
      nodeID: 14,
      itemID: 0,
      text: 'Room 14',
      upID: null,
      rightID: null,
      downID: null,
      leftID: 13,
    );

    dungeonMap[15] = DungeonNode(
      nodeID: 15,
      itemID: -1,
      text: 'Room 15',
      upID: null,
      rightID: 12,
      downID: 6,
      leftID: 16,
    );

    dungeonMap[16] = DungeonNode(
      nodeID: 16,
      itemID: -1,
      text: 'Room 16',
      upID: null,
      rightID: 15,
      downID: 17,
      leftID: null,
    );

    dungeonMap[16] = DungeonNode(
      nodeID: 16,
      itemID: -1,
      text: 'Room 10',
      upID: 11,
      rightID: null,
      downID: 9,
      leftID: null,
    );

    dungeonMap[17] = DungeonNode(
      nodeID: 17,
      itemID: -1,
      text: 'Room 17',
      upID: 16,
      rightID: null,
      downID: null,
      leftID: 18,
    );

    dungeonMap[18] = DungeonNode(
      nodeID: 18,
      itemID: -1,
      text: 'Room 18',
      upID: 19,
      rightID: 17,
      downID: null,
      leftID: null,
    );

    dungeonMap[19] = DungeonNode(
      nodeID: 19,
      itemID: -1,
      text: 'Room 19',
      upID: 20,
      rightID: null,
      downID: 18,
      leftID: null,
    );

    dungeonMap[20] = DungeonNode(
      nodeID: 20,
      itemID: -1,
      text: 'Room 20',
      upID: 21,
      rightID: null,
      downID: 19,
      leftID: null,
    );

    dungeonMap[21] = DungeonNode(
      nodeID: 21,
      itemID: -1,
      text: 'Room 21',
      upID: 22,
      rightID: null,
      downID: 20,
      leftID: null,
    );

    dungeonMap[22] = DungeonNode(
      nodeID: 20,
      itemID: 3,
      text: 'Room 2',
      upID: 21,
      rightID: null,
      downID: 19,
      leftID: null,
    );

    dungeonMap[22] = DungeonNode(
      nodeID: 20,
      itemID: 3,
      text: 'Room 2',
      upID: 21,
      rightID: null,
      downID: 19,
      leftID: null,
    );
  }
}
