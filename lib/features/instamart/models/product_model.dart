class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({
    required this.name,
    required this.image,
  });
}

class ProductModel {
  final String id;
  final String name;
  final String weight;
  final String eta;
  final num price;
  final num originalPrice;
  final String discount;
  final String? badge;
  final String image;

  const ProductModel({
    required this.id,
    required this.name,
    required this.weight,
    required this.eta,
    required this.price,
    required this.originalPrice,
    required this.discount,
    this.badge,
    required this.image,
  });
}