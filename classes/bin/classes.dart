void main(List<String> arguments) {
  // To instantiate a class
  final person1 = Person(name: 'Rodri', age: 18);
  final person2 = Person.createDefault();

  //
  print(person1.name);
  print(person2.name);
}

// Classes in Dart is by reference
// Simple declaration
class Person {
  final String name;
  final int age;

  // Class constructor
  // As the properties had the same name as the required on the
  // constructor signature with THIS the value is alredy set
  Person({required this.name, required this.age});

  // A different constructor
  // In the case below, createDefault will initialise with pre.defined value
  Person.createDefault()
      : name = "Rodri",
        age = 20;

  // Another constructor
  Person.calculatedAge({required this.name}) : age = 20;

  // Constructor could receive optional parameters
  // howeve them must be resolved during the initialisation
  Person.withOpional({String? name, int? age})
      : name = name ?? 'Default',
        age = age ?? 10;
}
