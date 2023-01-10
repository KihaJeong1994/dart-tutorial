void main() {
  var player = Player(
    name: "david",
    xp: 1500,
    team: Team.red,
    age: 12,
  ); // same as var player = new Player();
  player.sayHello();

  // Cascade Notation
  var player2 = Player(
    name: "nico",
    xp: 2500,
    team: Team.blue,
    age: 12,
  );
  // you can set property by ..<property> = <value>
  // '..' first . means class just before .
  player2
    ..name = 'las'
    ..xp = 120000
    ..team = Team.green;
  player2.sayHello();

  // Named Constructor
  var bluePlayer = Player.createBluePlayer(
    name: 'nexo',
    age: 22,
  );
  bluePlayer.sayHello();
  var redPlayer = Player.createRedPlayer(
    name: 'fixa',
    age: 25,
  );
  redPlayer.sayHello();

  // api example
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}

class Player extends Human {
  String name;
  int xp, age;
  Team team;

  // constructor
  // you don't have to tell constructor the type of property.
  // Also, you don't have to do this.name=name; this.xp=xp;
  // below one is positional parameter
  // Player(this.name, this.xp, this.team, this.age);
  // Named Constructor parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // Named Constructor
  // ':' is used for class initialization
  Player.createBluePlayer({required this.name, required this.age})
      : team = Team.blue,
        xp = 0;

  Player.createRedPlayer({required this.name, required this.age})
      : team = Team.red,
        xp = 0;

  // pattern used by Flutter frequently
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        team = convertStringToTeam(playerJson['team']),
        xp = playerJson['xp'],
        age = 24;

  void sayHello() {
    // you can use property by this.name, but it is not recommended unless there is same name variable in method
    print(
        "Hello my name is $name, and I'm $age. I belong to team $team, and my xp is $xp");
  }

  void walk() {
    print('player is  walking');
  }
}

// Enum
enum Team {
  red,
  blue,
  green,
}

Team convertStringToTeam(String teamString) {
  if (teamString == 'red') {
    return Team.red;
  } else if (teamString == 'blue') {
    return Team.blue;
  } else {
    return Team.green;
  }
}

// Abstract Classes
// force you to inherit method
abstract class Human {
  void walk();
}

var apiData = [
  {
    "name": "nico",
    "team": "red",
    "xp": 0,
  },
  {
    "name": "lynn",
    "team": "blue",
    "xp": 0,
  },
  {
    "name": "xiran",
    "team": "red",
    "xp": 0,
  },
];
