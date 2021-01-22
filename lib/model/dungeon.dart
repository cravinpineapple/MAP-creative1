class DungeonNode {
  var nodeID; // integer
  var item; // 0 = Sword, 1 = Helmet, 2 = Potion, 3 = Sunglasses, 4 = Teddy Bear

  DungeonNode({int nodeID}) {
    this.nodeID = nodeID;
  }
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

  //static dungeonMap = [new ]

  Dungeon() {
    test2();
  }

  void test2() {
    print('hello!');
  }
}
