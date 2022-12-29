void main(List<String> args) {
  sayHello("Rodrigo");
  sayHelloToOptional("Rodri");
  sayHelloToOptional(null);

  //
  sayHelloNamedRequired(name: "Ro");

  //
  describe();
  describe(name: 'Rodrig');
  describe(age: 1);
  describe(name: "Rodrigo", age: 18);
  describe(age: 18, name: "Rodrigo");

  //
  someComplexFunctionCall("Rodrigo");
  someComplexFunctionCall("Rodrigo", address: "", age: 19);
  someComplexFunctionCall("Rodrigo", age: 13, address: "");

  //
  somComplexFunctionPositional();
  somComplexFunctionPositional('Rodrigo'); // The first parameter
  somComplexFunctionPositional(
      'Rodrigo', 'D2'); // the two parameters in this order

  //
  sum(1, 2);

  //
  performOperation(2, 2, (a, b) => a + b);
  performOperation(2, 2, (a, b) => a - b);
  performOperation(2, 5, sum);
  performOperation(5, 7, minus);

  //
  final something = doSomething(10, 30);
  // If () are not added in the end, the function will not be called
  print(something);
  print(something()); // 40
}

// With parameter
void sayHello(String name) {
  print("Hello $name");
}

// functions can receive a optional value
void sayHelloToOptional(String? name) {
  print("Hello $name"); // Of course this is not how to handle it
}

// Named parameters
// The parameter 'name' can't have a value of 'null' because of its type, but the implicit default value is 'null'
void sayHelloNamed({String name = 'Rodri'}) {}

// Required obligates, a name HAVE TO me passed
void sayHelloNamedRequired({required String name}) {}

// Named parameters could be called in a diffent order
void describe({String? name, int? age}) {}

// Mix optional named with required with no default values
// Name will always be required
void someComplexFunctionCall(
  String name, {
  int? age,
  String? address,
}) {}

// With positional parameters
// The name of parameter itself will no be included on the call
// The parementer entries on the call must follow the order
void somComplexFunctionPositional([String? name, String lastName = "D2"]) {}

// Function with arrow return
int sum(int a, int b) => a + b;
int minus(int a, int b) => a - b;

// Function could have a function as parameter
// This function will receive two values as int and a third as a function.
// Then it will return whatever the result of the given function returns
int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

// A function can return another function
// The function below returns a function that returns a + b
int Function() doSomething(int a, int b) => () => a + b;
