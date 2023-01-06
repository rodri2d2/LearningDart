void main(List<String> arguments) {
  final int num1 = 2;
  final result = num1.timesFour;
  print(result); // 8

  //
  final int num2 = 2;
  final result2 = num2.times(5);
  print(result2); //10

  //
}

// EXTENSION

// Extension ON idicates if the extesion is base in existing data type
extension on int {
  // A simple implematation for ALL ints
  // from now on every int has this get that multiples and return a this * 4
  int get timesFour => this * 4;

  int times(int forThis) => this * forThis;
}

// The extension below as a name for itself and also constraints the data type
extension SumOFIterable<T extends num> on Iterable<T> {
  num get sum => 0 as T;
}
