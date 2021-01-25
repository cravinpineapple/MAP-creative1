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

  static var facing = 0; // 0 = North, 1 = East, 2 = South, 3 = West

  static Map<dynamic, dynamic> dungeonMap = Map();

  reset() {
    hasSword = false;
    hasHelmet = false;
    hasPotion = false;
    hasSunglasses = false;
    hasBear = false;
    currentNode = dungeonMap[0];
  }

  static moveUp() {
    currentNode = dungeonMap[currentNode.upID];
    print('Current Node: ${currentNode.nodeID}');
    facing = 0;
  }

  static moveRight() {
    currentNode = dungeonMap[currentNode.rightID];
    print('Current Node: ${currentNode.nodeID}');
    facing = 1;
  }

  static moveDown() {
    currentNode = dungeonMap[currentNode.downID];
    print('Current Node: ${currentNode.nodeID}');
    facing = 2;
  }

  static moveLeft() {
    currentNode = dungeonMap[currentNode.leftID];
    print('Current Node: ${currentNode.nodeID}');
    facing = 3;
  }

  static initDungeon() {
    dungeonMap[0] = DungeonNode(
      nodeID: 0,
      itemID: -1,
      text: 'Welcome to the dungeon! There\'s no turning back now...',
      upID: 1,
      rightID: null,
      downID: null,
      leftID: null,
    );

    dungeonMap[1] = DungeonNode(
      nodeID: 1,
      itemID: -1,
      text:
          'Iron bars fall down behind you as you enter this hallway. A long hallway leads North or East, as well as a hallway heading West.',
      upID: 6,
      rightID: 8,
      downID: null,
      leftID: 2,
    );

    dungeonMap[2] = DungeonNode(
      nodeID: 2,
      itemID: -1,
      text: 'This hallway leads North, East, and South.',
      upID: 3,
      rightID: 1,
      downID: 5,
      leftID: null,
    );

    dungeonMap[3] = DungeonNode(
      nodeID: 3,
      itemID: -1,
      text: 'This hallway leads East and South',
      upID: null,
      rightID: 4,
      downID: 2,
      leftID: null,
    );

    dungeonMap[4] = DungeonNode(
      nodeID: 4,
      itemID: -1,
      text: 'Dead End',
      upID: null,
      rightID: null,
      downID: null,
      leftID: 3,
    );

    dungeonMap[5] = DungeonNode(
      nodeID: 5,
      itemID: 4,
      text:
          'You open a door to a large room with nothing but a... Teddy Bear? I mean, I guess it could be useful.',
      upID: 2,
      rightID: null,
      downID: null,
      leftID: null,
    );

    dungeonMap[6] = DungeonNode(
      nodeID: 6,
      itemID: -1,
      text:
          'You make it halfway across the hallway, when you notice a hallway heading East as well.',
      upID: 15,
      rightID: 7,
      downID: 1,
      leftID: null,
    );

    dungeonMap[7] = DungeonNode(
      nodeID: 7,
      itemID: 1,
      text:
          'You come across a skeleton in the corner of this hallway sitting criss-cross-apple sauce. He has a point helmet that looks useful. The hallway leads West and South.',
      upID: null,
      rightID: null,
      downID: 8,
      leftID: 6,
    );

    dungeonMap[8] = DungeonNode(
      nodeID: 8,
      itemID: -1,
      text:
          'This a part of long hallway that extends West to East. There is also a hallway leading North',
      upID: 7,
      rightID: 9,
      downID: null,
      leftID: 1,
    );

    dungeonMap[9] = DungeonNode(
      nodeID: 9,
      itemID: -1,
      text:
          'You reach the corner of a hallway, with a long hallway heading both North and West.',
      upID: 10,
      rightID: null,
      downID: null,
      leftID: 8,
    );

    dungeonMap[10] = DungeonNode(
      nodeID: 10,
      itemID: 2,
      text:
          'Along this hallway you notice a potion sitting atop a pedestal. It smells awful, but you take a swig anyway. You feel much stronger!',
      upID: 11,
      rightID: null,
      downID: 9,
      leftID: null,
    );

    dungeonMap[11] = DungeonNode(
      nodeID: 11,
      itemID: -1,
      text:
          'A path extends West and South, but the path North has an air of danger coming from it. I probably shouldn\'t go there unless I\'m ready...',
      upID: 23,
      rightID: null,
      downID: 10,
      leftID: 12,
    );

    dungeonMap[12] = DungeonNode(
      nodeID: 12,
      itemID: -1,
      text:
          'The hallway continues from East to West with another hallway extending South',
      upID: null,
      rightID: 11,
      downID: 13,
      leftID: 15,
    );

    dungeonMap[13] = DungeonNode(
      nodeID: 13,
      itemID: -1,
      text: 'This short hallway has a door on the East wall. The hallway extends North',
      upID: 12,
      rightID: 14,
      downID: null,
      leftID: null,
    );

    dungeonMap[14] = DungeonNode(
      nodeID: 14,
      itemID: 0,
      text:
          'You open the door and find the dungeon\'s armory. You peruse the weapons until you find an amethyst sword that catches your eye.',
      upID: null,
      rightID: null,
      downID: null,
      leftID: 13,
    );

    dungeonMap[15] = DungeonNode(
      nodeID: 15,
      itemID: -1,
      text: 'The hallway extends East to West with a path heading South.',
      upID: null,
      rightID: 12,
      downID: 6,
      leftID: 16,
    );

    dungeonMap[16] = DungeonNode(
      nodeID: 16,
      itemID: -1,
      text: 'The hallway comes to an end, with a path heading South and East.',
      upID: null,
      rightID: 15,
      downID: 17,
      leftID: null,
    );

    dungeonMap[17] = DungeonNode(
      nodeID: 17,
      itemID: -1,
      text: 'This hallway cuts North and West.',
      upID: 16,
      rightID: null,
      downID: null,
      leftID: 18,
    );

    dungeonMap[18] = DungeonNode(
      nodeID: 18,
      itemID: -1,
      text: 'This hallway is darker than normal, and leads North and East.',
      upID: 19,
      rightID: 17,
      downID: null,
      leftID: null,
    );

    dungeonMap[19] = DungeonNode(
      nodeID: 19,
      itemID: -1,
      text: 'This hallway is pitch black as you travel. You can\'t see anything.',
      upID: 20,
      rightID: null,
      downID: 18,
      leftID: null,
    );

    dungeonMap[20] = DungeonNode(
      nodeID: 20,
      itemID: -1,
      text:
          'You have been walking this hallway for an uncomfortably long time. You\'re unsure what time it is or how long you have been walking.',
      upID: 21,
      rightID: null,
      downID: 19,
      leftID: null,
    );

    dungeonMap[21] = DungeonNode(
      nodeID: 21,
      itemID: -1,
      text:
          'Your mind begins to wander, you begin to lose sense of not just time, but yourself. Continuing could be risky.',
      upID: 22,
      rightID: null,
      downID: 20,
      leftID: null,
    );

    dungeonMap[22] = DungeonNode(
      nodeID: 22,
      itemID: 3,
      text:
          'You see a light at the end with some sunglasses. Oh yeah! These are the Sunglasses of Super Mega Ultimate Unbelievable Inconceivable Destruction. Worth it!',
      upID: null,
      rightID: null,
      downID: 21,
      leftID: null,
    );

    dungeonMap[23] = DungeonNode(
      nodeID: 23,
      itemID: 3,
      text: 'Room 23 (Boss)',
      upID: null,
      rightID: null,
      downID: 11,
      leftID: null,
    );
  }
}
