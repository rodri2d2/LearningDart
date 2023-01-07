void main(List<String> args) {
  final person = Person('Rodri', 18);
  // ====> print(person.description) //A member named 'description' is defined in extension
  // 'ShortDescription' and extension 'LongDescription', and none are more specific.
  // So to solve the problem
  print(ShortDescription(person).description);
  print(LongDescription(person).description);
}

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

// For this case an unnamed extension will be create
extension ShortDescription on Person {
  String get description => '$name';
}

// However if another extension is created on top on Person
// Dart will not know which description to call
// In this case there are two options
// 1. change name of description to differentiate
// 2. add a name to extention
extension LongDescription on Person {
  String get description => '$name and $age';
}
