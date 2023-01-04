import 'dart:collection';

void main(List<String> arguments) {
  final person = Person();
  person.jump(speed: 10);
  person.walk(speed: 5);
}

// M I X I N S
// In DART there is no multiple inhence, so MIXINS allow a sort of
// New funcionality
// Mixins are data type themselves_
mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at speed $speed');

    // This mixin has access to property speed as it is build on TOP of HasSpeed
    // so in this case assign a value to its
    // HasSpeed speed
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at speed $speed');

    // This mixin has access to property speed as it is build on TOP of HasSpeed
    // so in this case assign a value to its
    // HasSpeed speed
    this.speed = speed;
  }
}

// When "implement" mixin use WITH key word
// In this case, whoever is mixin CanJump and CanWalk al HAVE TO mix HasSpeed
// ATTENTION -> HasSpeed have to go first
class Person with HasSpeed, CanJump, CanWalk {
  // As Person MIX HasSpeed and it has a abtract property
  // is mandatory to implement it
  @override
  double speed = 0;
}
