import '../models/product_model.dart';

class SnacksMockData {
  static const List<CategoryModel> subCategories = [
    CategoryModel(
      name: 'Chips & Namkeens',
      image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png',
    ),
    CategoryModel(
      name: 'Chocolates',
      image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png',
    ),
    CategoryModel(
      name: 'Biscuits & Cakes',
      image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png',
    ),
    CategoryModel(
      name: 'Tea & Coffee',
      image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png',
    ),
    CategoryModel(
      name: 'Sweets & Candies',
      image: 'https://pngimg.com/uploads/candy/candy_PNG98.png',
    ),
  ];

  static const Map<String, List<ProductModel>> catalogProducts = {
    'Chips & Namkeens': [
      ProductModel(
        id: 'sn_1',
        name: "Lay's Classic Salted Potato Chips",
        weight: '50 g',
        eta: '6 MINS',
        price: 20,
        originalPrice: 20,
        discount: 'MRP',
        image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png',
      ),
      ProductModel(
        id: 'sn_2',
        name: 'Kurkure Masala Munch',
        weight: '85 g',
        eta: '6 MINS',
        price: 20,
        originalPrice: 20,
        discount: 'MRP',
        badge: 'BESTSELLER',
        image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png',
      ),
      ProductModel(
        id: 'sn_3',
        name: 'Haldiram Bhujia Sev',
        weight: '200 g',
        eta: '6 MINS',
        price: 55,
        originalPrice: 65,
        discount: '15% OFF',
        image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png',
      ),
    ],
    'Chocolates': [
      ProductModel(
        id: 'ch_1',
        name: 'Cadbury Dairy Milk Silk',
        weight: '150 g',
        eta: '6 MINS',
        price: 165,
        originalPrice: 175,
        discount: '6% OFF',
        image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png',
      ),
      ProductModel(
        id: 'ch_2',
        name: 'Ferrero Rocher Chocolate Box',
        weight: '16 Pieces',
        eta: '6 MINS',
        price: 499,
        originalPrice: 550,
        discount: '9% OFF',
        badge: 'Price Drop',
        image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png',
      ),
    ],
  };
}