import 'dart:math';

import 'package:test/expect.dart';

void main(List<String> arguments) {
  // The code below will throw an error
  // So to avoid it it must be wrapperd in a try catch clause
  // final person1 = Person(age: 141);
  // print(person1);

  try {
    final person1 = Person(age: 19);
    final person2 = Person(age: -1); // this will be trigger first
    final person3 = Person(age: 141);
  } catch (error) {
    // even if this is a generic error, because of an implementation
    // created it will be erro runtime type of InvalidAgeException
    print(error.runtimeType);
    print(error.toString());
  }
  print('-----------------------');

  //use custom Exeption
  try {
    final person4 = Person(age: -1);
  } on InvalidAgeExeption catch (exception) {
    print(exception);
  } finally {
    prints('Will always execute after the error is catch');
  }
}

class Person {
  final int age;

  // This constructor could throw
  Person({required this.age}) {
    if (age < 0) {
      // throw Exception('Age must be positive');
      throw InvalidAgeExeption(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeExeption(age, 'Age must be less than 140');
    }
  }

  void run() => throw UnimplementedError();
}

// Custom exeptions classes
class InvalidAgeExeption implements Exception {
  final int age;
  final String message;

  InvalidAgeExeption(this.age, this.message);

  @override
  String toString() => 'InvalidAgeExeption, $message, $age';
}
