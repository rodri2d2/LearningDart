void main(List<String> args) {
  // MAP will be the dicctionary type
  // The code bellow will create a inferred type of MAP<String, Object>
  final info = {
    'name': 'Rodrigo',
    'age': 18,
  };

  final Map<String, String> infoStrong = {
    'name': 'Rodrigo',
    'address': 'Mi casa',
  };

  // Add new key values to MAP
  infoStrong['phone'] = '5555';

  print(infoStrong); // {name: Rodrigo, address: Mi casa, phone: 5555}

  // Interate
  print(infoStrong['name']); // Rodrigo
  print(infoStrong.keys); // (name, address, phone)
  print(infoStrong.values); // (Rodrigo, Mi casa, 5555)
  print(info.entries); //(MapEntry(name: Rodrigo), MapEntry(age: 18))

  for (final entry in infoStrong.entries) {
    print(entry.key);
    print(entry.value);
    //name
    // Rodrigo
    // address
    // Mi casa
    // phone
    // 5555
  }

  if (infoStrong.containsKey('name')) {
    print('Name is ${infoStrong['name']}');
  }

  // Add only if the key does not exist
  infoStrong.putIfAbsent('height', () => '180');
  print(
      infoStrong); // {name: Rodrigo, address: Mi casa, phone: 5555, height: 180}
}
