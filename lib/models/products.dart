import 'package:meta/meta.dart' show required;

class Product {

  final int id;
  final String name;
  final double price;
  final String description;
  final double rate;
  bool isFavorite = false;

  Product({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.description,
    @required this.rate
  });

  static Product fromJson( Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      description: json['Description'],
      name: json['Name'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble()
    );
  }

}