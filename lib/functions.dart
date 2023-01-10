void main(List<String> argements) {
  print("sayHello:${sayHello("david", 25)}");
  print("plus:${plus(1, 2)}");
  print("Named Parameters :${sayHello2(
    age: 12,
    country: 'korea',
    name: 'John',
  )}");
  print("Named Parameters2 with default value:${sayHello2(
    name: 'Nick',
  )}");
  print("Optional Positional Parameter:${sayHello3("david", 25)}");
  print("QQ Operator : ${capitalizeName("daniel")}");
  print("typedef: ${reverseListOfInts([1, 2, 3])}");
}

// 1. Function & Positional Parameter
// String sayHello(String name) {
//   return 'Hello $name nice to meet you!';
// }
// same as below(you can use fat arrow and remove {})=> for one row function
// Positional Parameter
String sayHello(String name, int age) =>
    'Hello $name nice to meet you!, and you are $age years old';

num plus(num a, num b) => a + b;

// 2. Named Parameters : you don't have to care about order
// funcationName({[required] type1 variableName1[=defaultValue1],[required] type2 variableName2[=defaultValue2]})
// you can declare default value if null, or you can use 'required' modifier to say this parameter is necessary
String sayHello2({
  required String name,
  int age = 20,
  String country = 'wakanda',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// 3. Optional Positional Parameters : only for last value?
// functionName([Type1? vaiablename [=defaultValue1]])
String sayHello3(String name, int age, [String? country = 'cuba']) =>
    'Hello $name nice to meet you!, and you are $age years old, and you are from $country';

// 4. QQ Operator(null aware operator) : ??, ?=
// ?? (QQ Operator) : left ?? right
// if left is null , choose right. else left
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';
// ??= (QQ equals) : left ??= right
// if left is null, left = right
void qqETest() {
  String? address;
  address ??= 'here';
}

// 5. typedef
// define the alias of certain class(ex. list, set, map)
// typedef <name> = <class>;
typedef ListOfInts = List<int>;
ListOfInts reverseListOfInts(ListOfInts list) => list.reversed.toList();
