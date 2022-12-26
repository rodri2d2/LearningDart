void main(List<String> args) {
  // late keyword actually will assign value when it is needed
  // e.g.:
  late final someValue = getSomeValue();
  print('The program is here');
  print(someValue);

  // The expectations is that
  // 1. On return some value
  // 2. 10
  // 3. The program is here

  // However the program will call getSomeValue() when
  // the constant someValue is used for the first time
  // If the print(someValue) for some reason never occur than someValue
  // will never get any value
}

int getSomeValue() {
  print('On return some value');
  return 10;
}
