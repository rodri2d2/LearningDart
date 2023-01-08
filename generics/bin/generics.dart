void main(List<String> arguments) {
  final int someValue = intOrDouble();
  print(someValue.runtimeType); // int
}

// Gererics is the idea of not knowing some type of data and do
// something with
// The example below retuns an number
// It could be either Int or Double
SOMETHING intOrDouble<SOMETHING extends num>() {
  switch (SOMETHING) {
    case int:
      return 1 as SOMETHING;
    case double:
      return 1.0 as SOMETHING;
    default:
      throw Exception('Not supported');
  }
}

// To achieve a standar
T intOrDoubleWithT<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not supported');
  }
}

// bool doMatchType<T1, T2>(T1 type1, T2 type2) =>
//     type1.runtimeType == type2.runtimeType;

// Same funtion as above
bool doMatchType<L, R>(L a, R b) => L == R;

// OUT OF SCOPE
// Type definition is like ALIAS for another type of value
typedef SomeNumbers = Map<String, num>;
