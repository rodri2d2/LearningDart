void main(List<String> arguments) {
  // Using a Enum in a contrustor for example
  final dog = Animal(
    name: 'Rex',
    type: AnimalType.mamal,
  );

  // Using Enum inside a switch
  String animalType(Animal animal) {
    switch (animal.type) {
      case AnimalType.mamal:
        return "Manal";
      case AnimalType.bird:
        return "Bird";
      case AnimalType.fish:
        return "Fish";
    }
  }

  //All enums has a values to indicate all values of its type
  print(AnimalType
      .values); // [AnimalType.mamal, AnimalType.bird, AnimalType.fish]
  // name property
  print(AnimalType.mamal.name); // mamal
}

// Declararion of a simple Enum
// In Dart there is no associated values for a enum
enum AnimalType {
  mamal,
  bird,
  fish,
}

// In Dart enum can have properties
// ignore: empty_constructor_bodies
enum XType {
  // This is the CASE
  // As this ENUM has a property the case have to initiate it
  // however the dev cannot instatiate so the value for the property
  // will be hard coded
  anyCase(
    xname: 'Some name',
  );

  final String xname;

  const XType({required this.xname});
} // THIS DOES NOT MAKE ANY SENSE

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });
}
