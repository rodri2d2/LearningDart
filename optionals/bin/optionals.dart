void main(List<String> arguments) {
  // As in Swift an Optional says that either a var contains
  // a value or not
  // by default if it is not initialised it will be automatically null
  String? name;
  print(name); // null

  // Some operations
  // The code below will assign the value to the optional only
  // if it is null
  // Sort of Coalecing  in swift
  name ??= 'Rodrigo';
  print(name); // Rodrigo

  // To access properties of a null object
  // Optional operator have to be place in
  print(name?.length);

  // Optional can be nested
  List<String?>? names; // An optional list of optionals strings
  names?.add("Rodri");
  names?.add(null);
  print(names); // However the resulta here is NULL

  // Dart handles Optionals in a much different
  // As well as Swift, Dart allows the force/unwrappe of an optional
  //print(names!); // Null check operator used on a null value

  // In Dart to check optionals and unwrappe it if it has a value, use IF-Clause
  String? someName;
  if (someName == null) {
    print("someName value is null");
  } else {
    final int leng = someName
        .length; // No need of ?  -  someName?.length because it is already unwrapped
    print(leng);
  }
}
