class MenuItem {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final bool isVeg;
  final bool isBestseller;
  final double rating;
  final int ratingCount;
  final String? calories;

  MenuItem({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.isVeg,
    this.isBestseller = false,
    required this.rating,
    required this.ratingCount,
    this.calories,
  });
}

class MenuCategory {
  final String categoryName;
  final List<MenuItem> items;

  MenuCategory({
    required this.categoryName,
    required this.items,
  });
}