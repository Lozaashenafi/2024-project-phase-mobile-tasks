class Product {
  // Private fields
  String _name;
  String _description;
  double _price;

  // Constructor
  Product(this._name, this._description, this._price);

  // Getters
  String get name => _name;
  String get description => _description;
  double get price => _price;

  // Setters
  set name(String value) {
    if (value.isEmpty) throw Exception("Name cannot be empty");
    _name = value;
  }

  set description(String value) {
    if (value.isEmpty) throw Exception("Description cannot be empty");
    _description = value;
  }

  set price(double value) {
    if (value < 0) throw Exception("Price cannot be negative");
    _price = value;
  }

  @override
  String toString() {
    return "Name: $_name\nDescription: $_description\nPrice: \$$_price";
  }
}
