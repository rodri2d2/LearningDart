void main(List<String> args) {
  // SETS are a collection where any an element cannot repeat twice
  final names = {'Rodri', 'Maria', 'Jose', 'Rodri'};
  print(names); // {Rodri, Maria, Jose}

  // ATTENTION!!!
  // THIS
  var names2 = {};
  // Creates a MAP not a set
  // Set or map? The syntax for map literals is similar to that for set literals.
  //Because map literals came first, {} defaults to the Map type.
  //If you forget the type annotation on {} or the variable it’s assigned to,
  //then Dart creates an object of type Map<dynamic, dynamic>.

  // The code below creates a set which contain an array of names
  final uniqueNames = {names};
  print(uniqueNames); // {{Rodri, Maria, Jose}}

  // Howeve if the goal is to remove each item and place it as a SET item
  // The spread operator must be used
  final uniqueNameSpread = {...names};
  print(uniqueNameSpread); // {Rodri, Maria, Jose}
}
