void main(List<String> arguments) async {
  print(getUserName()); //Instance of 'Future<String>'
  // So to call a future fuction we need to wait to await ;p
  // Howeve this main function also have to be marked as Future and async
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());

  // ATTENTION
  // The code below will wait to resolve getPhoneNumber and then will call remining fucntions
  print(await getPhoneNumber());
  print(await getUserName());
  print(await getAddress());

  //Future chaining
  final nameLength = await getFullName().then(
    (value) => value.length,
  );
  print(nameLength); //15
}

// So the function below will execute
// not on order
Future<String> getUserName() async {
  return 'Rodrigo';
}

// Another way to create a future
Future<String> getAddress() => Future.value('5 St Germen');

//
Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 1),
      () => '555-555',
    );

// Future chaining
Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'Rodrigo Candido',
    );

Future<int> calculateLength(String value) => Future.delayed(
      const Duration(seconds: 2),
      () => value.length,
    );
