void main(List<String> args) {
  // Sting type that can be mutaded
  // Inferred
  var address = "123 Main St";
  // Strong
  String addressStrong = "456 Main St";

  print(address);
  print(addressStrong);

  address = "456 Main St";
  print(address);

  // String can be operated
  print(address.toLowerCase());
  var randomFromAddress = address.replaceAll('Main', 'bla');
  print(randomFromAddress);
  print(address.length);

  // Int type
  var age = 20;
  int ageStrong = 20;
  print(ageStrong);

  // Int can be operated
  print(ageStrong.isOdd);
  print(ageStrong.isEven);
  print(ageStrong.bitLength);

  // Double type
  var height = 12.0;
  double heightStrong = 12.8;

  // ATTENTION!!!!
  // If type is not defined when using a double and int
  // a mistake could occur
  var heightUndefined = 12; // by defautl DART will inferred this value as INT

  // Double can be operated
  print(heightStrong.isFinite);
  print(heightStrong.isNegative);
  print(heightStrong.floor());

  // Bool type
  var isBool = true;
  var isBoolStrong = true;

  // Bool can be operated
  print(isBoolStrong.toString());
  print(!isBoolStrong);

  // List type
  var list = [1, 2, 3];
  List<int> listStrong = [4, 5, 6];
  List listDynamic = [1, 'two', 3];

  print(listDynamic);

  // List can be operated
  print(listStrong.length);
  print(listStrong.reversed);

  // Map/Dictionary
  var dictionary = {'key': 'value'};
  Map<String, int> dictionaryStrong = {'key': 2};

  // Map cab be operated
  print(dictionaryStrong['key']);
  print(dictionaryStrong.entries);
  print(dictionaryStrong.keys);
  print(dictionary.values);

  // SET type
  // sort of list that can not have a duplicated value
  var someSet = {1, 5, 3};
  Set<int> someSetStrong = {1, 2, 3};
  // Set<int> someWrongSet = {1, 2, 2, 3};

  // Set can be operated
  print(someSetStrong.length);
  print(someSetStrong.iterator);
  print(someSetStrong.last);

  // THE DYNAMIC TYPE
  // Listerally a type with no type
  var dynamicType = null;
  dynamic someStrongDynamic = null;

  // Symbol
}
