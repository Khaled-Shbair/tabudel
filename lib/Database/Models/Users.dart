class User {
  late int id;
  late String firstName;
  late String lastName;
  late String city;
  late String address;
  late String phone;

  User.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    firstName = rowMap['firstName'];
    lastName = rowMap['lastName'];
    city = rowMap['city'];
    address = rowMap['address'];
    phone = rowMap['phone'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['city'] = city;
    map['address'] = address;
    map['phone'] = phone;
    return map;
  }
}
