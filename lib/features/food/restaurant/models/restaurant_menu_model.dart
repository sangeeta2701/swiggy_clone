class MenuOption {
  final String title;
  final double price;

  // Added const constructor for immutability and const list support
  const MenuOption({
    required this.title,
    required this.price,
  });
}

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
  final bool isCustomisable;
  final List<MenuOption>? options;

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
    this.isCustomisable = false, // Guarantees non-null boolean
    this.options,
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