void main(List<String> args) {
  print(Vehicle.car()); // Vehicle of type Car
}

// There is anothe type of constructor
// the FACTORY which will return a instance of
// the current class subclasses
class Vehicle {
  const Vehicle();
  factory Vehicle.car() => Car();
  factory Vehicle.bike() => Bike();

  @override
  String toString() {
    // TODO: implement toString
    return 'Vehicle of type $runtimeType';
  }
}

class Car extends Vehicle {}

class Bike extends Vehicle {}
