void main(List<String> args) {
  //
  final names = ['Rodri', 'John', 'Doe'];
  print(names * 2);

  //
  print(add(1, 2));
  print(add(1, null));
  print(add(null, 2));
  print(add(null, null));

  //
  print('Rodrigo' - 'go');

  final iterable1 = [1, 2, 3];
  final iterable2 = [3];
  final result = iterable1 - iterable2;
  print(result); // (1, 2)
}

int add(int? a, int? b) => a + b;

// Example of custom *
extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}

// The example below creates a custom operator for '+'
// Given any optional NUMBER
// this way if is need
// optional var 1 + optional var 2 == ?
extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    final thisShadow = this;
    if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    } else if (thisShadow != null && other == null) {
      return thisShadow;
    } else if (thisShadow == null && other != null) {
      return other as T;
    } else {
      return 0 as T;
    }
  }
}

extension StringRemove on String {
  String operator -(String other) {
    return replaceAll(other, " ");
  }
}

extension IterableRemove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
