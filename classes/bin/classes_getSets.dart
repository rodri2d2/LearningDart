void main(List<String> args) {
  final car = Car(0);
  car.drive(newSpeed: 100);
  car.stop();

  print(car.speed); // this is a call to GET function
  car.speed = 10; // this is a call to the SET function
  print(car.speed);

  // However in this case the class already has a drive class
  // that calls SET method
  car.drive(newSpeed: 100);
}

class Person {
  final String name;
  final String lastName;
  final int age;

  // Computed get
  String get fullName {
    return '$name $lastName';
  } // ATTENTION in this case no need o ";"

  Person(this.name, this.lastName, this.age);
}

class Car {
  // "_" indicate it is private
  int _speed;

  Car(this._speed);

  // GET
  int get speed => _speed;

  // SET
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed not valid!');
    } else {
      _speed = newSpeed;
    }
  }

  // Simple method
  void drive({required int newSpeed}) {
    speed = newSpeed;
    //
    print("Accelerating to $speed km/h");
  }

  void stop() {
    _speed = 0;
    print('Stopping...');
  }
}
