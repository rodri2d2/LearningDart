void main(List<String> args) {
  final person = Human();
  person.run();
}

class Has2Feet {}

// This will limit the MIXIN
// This mixin is available only on Has2Feet
// Is available only on type that conforms Has2Feet or better saying
// Available only on Has2Feet subclasses
mixin CanRun on Has2Feet {
  void run() {
    print('$runtimeType is running...');
  }
}

// Now a instance of this class will have acess to run method
class Human extends Has2Feet with CanRun {}
