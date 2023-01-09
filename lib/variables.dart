void main() {
  // var -> type inference, recommended
  // can be updated
  // usually when you define variable inside function or method, or define local variable
  var name = 'David';
  name = 'Nick';
  print("name:$name");

  // define type
  // when you declare variable or property in class
  String name2 = 'John';
  print("name2:$name2");

  // dynamic type : not recommended
  // use when you don't know what type of data will come
  // var name3; //you can declare dynamic variable this way too
  dynamic name3;
  name3 = 3;
  if (name3 is String) {
    print('name3 is String');
  } else if (name3 is int) {
    print('name3 is int');
  }

  // Nullable Variables : <type>?
  // every variables are ,by default , non-nullable
  // String name4 = 'nico';
  // name4 = null; // not allowed because of null safety
  String? name4 = 'nico';
  name4 = null;
  print("name4:$name4");
  // print(name4.length); not allowed
  if (name4 != null) {
    print(name4.length);
  }
  // if variable is not null
  print("name4 isNotEmpty: $name4?.isNotEmpty");

  // Final variable : you can update this variable's value
  // similar to javascript "const"
  final name5 = 'Elly'; // same as final String name5 = 'Elly';
  // name5 = 'Ally'; //now allowed to update

  // Late variables
  // you can alloacate the value later, and late will verify you whether you allocate the value
  // ususally use  when you fetch data from api
  late final name6; // or var
  // you must allocate the value when you use late, else you get error
  name6 = 'nami';
  print("name6:$name6");
  var name7;
  print("name7:$name7");

  // Const variables: compile-time constant
  // this variable should be declared before *compile*, and never change
  // different from final, because final variable can be declared while runtime
  const envVariable = 'env';
  print("envVariable:$envVariable");
}
