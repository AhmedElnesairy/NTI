class LapModel {
  final String id;
  final String name;
  final String status;
  final String image;
  final String description;
  final num price;

  LapModel({
    required this.id,
    required this.name,
    required this.status,
    required this.image,
    required this.description,
    required this.price,
  });

  factory LapModel.fromJson(Map<String, dynamic> json){
    return LapModel(
        id: json["_id"],
        name: json["name"],
        status: json["status"],
        image: json["image"],
        description: json["description"],
        price: json["price"]);
  }
}
