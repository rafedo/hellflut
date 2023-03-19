class Food {
  String name;
  String location;
  String imageAsset;
  Food({
    required this.name,
    required this.location,
    required this.imageAsset,
  });
}

var foodList = [
  Food(
    name: 'Gudeg',
    location: 'Jogja',
    imageAsset: 'assets/images/food.jpeg',
  ),
  Food(
    name: 'Rendang',
    location: 'Minangkabau',
    imageAsset: 'assets/images/food1.jpeg',
  ),
  Food(
    name: 'es pleret',
    location: 'blitar',
    imageAsset: 'assets/images/food.jpeg',
  ),
];
