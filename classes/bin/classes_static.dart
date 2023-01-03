void main(List<String> args) {
  print("object");
  final person = Person.somethingJustOne();
  print(person);
}

class Person {
  static String someTextForPerson = 'TEXT';
  static int somethingJustOne() {
    return 1;
  }
}
