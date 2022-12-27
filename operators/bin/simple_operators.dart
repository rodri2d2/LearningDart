void main(List<String> args) {
  // + Adds [other] to this number.
  print(2 + 2); // 4
  print(2.2 + 2.1); // 4.3000000....1
  print((2.2 + 2.1).round()); //4

  // - Subtracts [other] from this number.
  print(4 - 2); // 2

  // * Multiplies this number by [other]
  // The result is an [int], as described by [int.*], if both this number and [other] are integers, otherwise the result is a [double]
  print(2 * 2); // 4
  print(2 * 2.2); // 4.4

  // / ATTENTION!!!
  // In Dart the division of any number by any number is always a double
  print(4 / 2); //2.0 as double
  final divisionResult = 4 / 2;
  print(divisionResult.runtimeType); // double

  // To "force" the division by two ints to keep int value a truncating division must be used
  // Truncating division operator.Performs truncating division of this number by [other].
  // Truncating division is division where a fractional result is converted to an integer by rounding towards zero.
  // Truncating will also take 2 doubles division and convert it to int
  print(4 ~/ 2); // 2 as int
  final divisionTruncated = 4 ~/ 2;
  print(divisionTruncated.runtimeType); // intç
  final divisionTruncatedWith2Doubles = 4.2 ~/ 2.8;
  print(divisionTruncatedWith2Doubles.runtimeType); // int

  // % Remainder
  print(9 % 2);

  // UNARY
  int num = 10;
  print(num++); // 10
  print(num--); // 11
  print(++num); // 11
  print(--num); // 10

  print(~1);
}
