void main(List<String> args) {
  final vehicle1 = Vehicle(2);

  //
  print(vehicle1.toString()); // This is a Vehicle
}

//Class
// In DART all clases comes from Object class
// Vehicle extends Object
class Vehicle {
  final int wheelCount;

  Vehicle(this.wheelCount);

  //Implementation of toString inherited from Object
  @override
  String toString() {
    // TODO: implement toString
    return "This is a Vehicle with $wheelCount wheels";
  }
}

// Subclass
class Car extends Vehicle {
  // As Car extend Vehicle
  // The construtor of Vehicle HAVE to be called
  Car() : super(4);

  // Another way
  Car.withSuper(super.wheelCount);

  //
  Car.hugeCar() : super(6);
}
