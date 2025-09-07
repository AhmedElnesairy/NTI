class HomeModel {
  final String image;
  final String name;
  final String description;

  HomeModel({
    required this.image,
    required this.name,
    required this.description,
  });
}

List<HomeModel> homeList = [
  HomeModel(
    image: "assets/images/image1.png",
    name: "Dr. Pediatrician",
    description: "Specialist Cardiologist",
  ),
  HomeModel(
    image: "assets/images/image2.png",
    name: "Dr. Mistry Brick",
    description: "Specialist Dentist",
  ),
  HomeModel(
    image: "assets/images/image4.png",
    name: "Dr. Ethan Wally",
    description: "Specialist Orthopedic",
  ),
  HomeModel(
    image: "assets/images/image3.png",
    name: "Dr. Sherwit",
    description: "Specialist Orthopedic",
  ),
  HomeModel(
    image: "assets/images/image2.png",
    name: "Dr. Pediatrician",
    description: "Specialist Cardiologist",
  ),
  HomeModel(
    image: "assets/images/image1.png",
    name: "Dr. Pediatrician",
    description: "Specialist Cardiologist",
  ),
];
