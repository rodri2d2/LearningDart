void main(List<String> arguments) {
  //
  final mon = FamilyMember(name: 'Mama');
  final dad = FamilyMember(name: 'Daddy');
  print(mon + dad);
}

class FamilyMember {
  final String name;

  FamilyMember({required this.name});

  @override
  String toString() => 'Family member (name = $name)';
}

class Family {
  final List<FamilyMember> members;

  Family({
    required this.members,
  });

  @override
  String toString() => 'Family (members = $members)';
}

// Custom PLUS '+' operator
// FamilyMember + FamilyMember = Family

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
