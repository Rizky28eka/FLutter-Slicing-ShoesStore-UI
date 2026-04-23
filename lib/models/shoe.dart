class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String category;
  final bool isBestSeller;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    this.category = 'Casual',
    this.isBestSeller = false,
  });
}
