void main(List<String> args) {
  var player = Player(team: Team.blue);
  player.sayHello();
  player.runQuick();
  print("player is ${player.height}m");
}

// Mixin
// class without constructor **
// usually used to add property
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuunnnnn!");
  }
}

class Tall {
  final double height = 1.99;
}

// you can add mixins by 'with'
// so you can reuse other class's property and method directly
class Player with Strong, QuickRunner, Tall {
  Team team;
  Player({required this.team});
  sayHello() {
    print("hello");
  }
}

class Horse with Strong, QuickRunner {}

enum Team { red, blue }
