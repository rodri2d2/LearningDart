void main(List<String> arguments) {
  final int num1 = 2;
  final result = num1.timesFour;
  print(result); // 8

  //
  final int num2 = 2;
  final result2 = num2.times(5);
  print(result2); //10

  //
  final nums = [1, 3, 3]; //7
  print(nums.sum);

  final nums2 = [1.2, 2.3, 3.5];
  print(nums2.sum); // 7.0

  //
  print(1.to(10)); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(1.to(10, inclusive: false)); // [1, 2, 3, 4, 5, 6, 7, 8, 9]
  print(10.to(1)); //[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

  //
  print([1, 1, 2, 3, 4, 6].containsDuplicatedValue); //true
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
  num get sum => reduce((a, b) => a + b as T);
}

// Even if already exists a generator, this extension could also regenete a range of numbers
extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}

extension on Iterable {
  bool get containsDuplicatedValue => toSet().length != length;
}

extension Find<K, V, X> on Map<K, V> {
  X? find<T>(
    K key,
    X? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && values is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
