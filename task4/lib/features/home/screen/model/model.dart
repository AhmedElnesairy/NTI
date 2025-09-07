class Product {
  final int id;
  final String title;
  final String description;
  final String brand;
  final String category;
  final num price;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.brand,
    required this.category,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      brand: json['brand'],
      category: json['category'],
      price: json['price'],
      image: json['thumbnail'],
    );
  }
}
