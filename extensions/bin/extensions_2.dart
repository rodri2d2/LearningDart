const json = {
  'name': 'Rodrigo',
  'age': 20,
};

void main(List<String> args) {
  final String? ageAsSting = json.find(
    'age',
    (int age) => age.toString(),
  );
  print(ageAsSting.runtimeType);

  final String helloName = json.find('name', (String name) => 'Hello $name');
  print(helloName);
}

extension Find<K, V, X> on Map<K, V> {
  X? find<T>(
    K key,
    X? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
