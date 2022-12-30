void main(List<String> arguments) {
  // Lists
  const names = ['Rodri', 'Juan', 'Jon', 'Doe'];
  // Itaration
  print(names[1]); // Juan
  for (final name in names) {
    print(name); // Whole list
  }
  // Some functionalities to facilitate interation
  // names.length;
  // names.reversed;
  // names.contains('X');
  // names.elementAt(2);
  // names.map((e) => null);
  // names.add('name');

  //
  final x = names.where((name) => name.startsWith('R'));
  print(x);

  final y = names.map((str) => str.length);
  print(y);

  //  FOLD ¿Work like a reducer? 🧐
  // Reduces a collection to a single value by iteratively
  // combining each element of the collection with an existing value
  final totalLength = names.fold(
      0, (previousValueTotal, str) => previousValueTotal + str.length);
  print(totalLength);
}
