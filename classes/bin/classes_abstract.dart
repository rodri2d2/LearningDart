void main(List<String> args) {
  final car = Car();
  car.acceletate();
}

// It is like a Interface/Protocol, however it could contain implementations
// and Interfaces not
abstract class Vehicle {
  final VehicleType type;

  Vehicle(this.type);

  // IMPLEMENTED
  void acceletate() => print('$type is incresing its speed');

  // MUST be implemented
  void stop();
}

enum VehicleType {
  car,
  truck,
  motorbike,
  bicicle,
  boat,
  plane,
}

class Car extends Vehicle {
  Car() : super(VehicleType.car);

  @override
  void stop() {
    // TODO: implement stop
  }
}

// With IMPLEMENTS the class Bike HAVE TO implement all needed methods and
// variables
class Bike implements Vehicle {
  @override
  void acceletate() {
    // TODO: implement acceletate
  }

  @override
  void stop() {
    // TODO: implement stop
  }

  @override
  // TODO: implement type
  VehicleType get type => VehicleType.motorbike;
}
