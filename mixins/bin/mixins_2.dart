void main(List<String> args) {
  final person = Person(firtName: "Jon", lastName: "Doe");
  print(person.fullName);
}

mixin HasFirstName {
  String get firtName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firtName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firtName;

  @override
  final String lastName;

  Person({
    required this.firtName,
    required this.lastName,
  });
}
