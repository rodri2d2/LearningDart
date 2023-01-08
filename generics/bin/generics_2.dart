void main(List<String> args) {
  print("dd");
}

//
typedef KeyValue<K, V> = MapEntry<K, V>;

// This way for example
// A constraint to JSON type definition is created
// All keys HAVE TO be a String, however, values could be dynamic
typedef JSON<T> = Map<String, T>;

// For example a Tuple kind type
class Tuple<L, R> {
  final L left;
  final R right;

  Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple: left = $left -> right = $right';
}

// Son lets create a extention to add more funcinoality
extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

// However the generic above is not enough constrained
// For a sum function for example, types must be or equal or implemente equal or it cant
// The example below constraints the L and R values to be a num
extension<L extends num, R extends num> on Tuple<int, int> {
  num get sum => left + right;
}
