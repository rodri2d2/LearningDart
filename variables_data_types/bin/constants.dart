void main(List<String> args) {
  // Keyword CONST
  // PREFER using lowerCamelCase for constant names.
  // const NAME = 'FOOs'; Clean Code
  const name = 'Rodri';
  print(name);

  // of course as a constant it can not be modified

  // Constant variables can't be assigned a value.
  // Try removing the assignment, or remove the modifier 'const' from the variable
  // name = 'Rod';

  // Keyword final
  // The final variable can only be set once.
  // However you can initialize with NO VALUE and then assing or modify as
  // an array for example
  final allowedAgesFINAL = [1, 2, 3];
  print(allowedAgesFINAL);

  // It is possible to modify an inside value
  allowedAgesFINAL.removeAt(2);
  print(allowedAgesFINAL);

  // With const
  const allowedAgesCONST = [1, 2, 3];

  // Even if the code is "OK" an error will occour during run time
  // Unsupported operation: Cannot remove from an unmodifiable list
  // allowedAgesCONST.removeAt(2);
  print(allowedAgesCONST);

  // However with final this sentence will be an error
  // because it is already initialized
  // allowedAgesFINAL = [4, 5, 6];

  // final initialized once on run time
  // PREFER specifying a type annotation for uninitialized variables and fields.
  final randomFinal;
  randomFinal = 'random final';
  print(randomFinal);

  // Constants const cannnot be assigned with a non-constant initial value
  // The code below will not work
  // Const variables must be initialized with a constant value
  // final someValue = 20;
  // const anotherValueFromSomeValue = someValue;
  // However final can be assign other way round
  const someValue = 20;
  final anotherValueFromSomeValue = someValue; // This is ok!
}

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'
