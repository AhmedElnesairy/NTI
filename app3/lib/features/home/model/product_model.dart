class Product {
  final String id;
  final String title;
  final double price;
  bool isFavorite;
  bool inCart;

  Product({
    required this.id,
    required this.title,
    required this.price,
    this.isFavorite = false,
    this.inCart = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      title: json['title'] ?? 'No Title',
      price: double.tryParse(json['price'].toString()) ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
    };
  }
}
