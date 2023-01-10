void main() {
  var human = Human(name: 'david');
  var player = Player(team: Team.red, name: 'John');
  human.sayHello();
  player.sayHello();
}

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print('Hello my name is $name');
  }
}

class Player extends Human {
  Team team;
  Player({
    required this.team,
    required String name,
  }) : super(name: name); // became parent class's instance immediately
  @override
  void sayHello() {
    super.sayHello();
    print("and i'm in $team");
  }
}

enum Team { red, blue }
