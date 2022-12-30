void main(List<String> args) {
  // SETS are a collection where any an element cannot repeat twice
  final names = {'Rodri', 'Maria', 'Jose', 'Rodri'};
  print(names); // {Rodri, Maria, Jose}

  // The code below creates a set which contain an array of names
  final uniqueNames = {names};
  print(uniqueNames); // {{Rodri, Maria, Jose}}

  // Howeve if the goal is to remove each item and place it as a SET item
  // The spread operator must be used
  final uniqueNameSpread = {...names};
  print(uniqueNameSpread); // {Rodri, Maria, Jose}
}
