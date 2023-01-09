void main(List<String> args) {
  // all of these basic types are also Object
  // => Dart is totally Object-Oriented-Languagee
  String name = 'David';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  // int, double extends num
  num height = 180;
  height = 179.5;

  // List
  // put , at last element => auto line seperate
  // you can use 'collection if || collection for' to manipulate list
  var willAdd5 = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (willAdd5) 5,
  ];
  // above same as if(willAdd5){numbers.add(5)}
  List<int> numbers2 = [3, 4, 5, 6];
  print("numbers:$numbers");
  print("numbers first element:${numbers.first}");

  // String intorpolation
  // add variable on string
  // $variable || ${variable+2} : ${} calculate inside {}
  var greeting = 'Hello, my name is $name, and my age is ${age + 1}';
  print(greeting);

  // Collection for
  var oldfFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldfFriends) "😍 $friend"
  ];
  print('newFriends:$newFriends');

  // Map
  // same as javascript object, or python dictionary
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  print("player:$player");

  // Set
  // has order(sequence), unique
  var numSet = {
    7,
    1,
    2,
    3,
  };
  numSet.add(1);
  numSet.add(1);
  numSet.add(1);
  print("numSet:$numSet");
}
