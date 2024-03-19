import 'dart:convert';

class Food {
  int _id = 0;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String _foodname = "";

  String get foodname => _foodname;

  set foodname(String value) {
    _foodname = value;
  }

  double _price = 0;

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'foodname': _foodname,
      'price': _price,
    };
  }
}
