class CategoryBannerModel {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String offerText;

  const CategoryBannerModel({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.offerText,
  });
}

class CategoryRestaurantModel {
  final String id;
  final String name;
  final String rating;
  final String ratingCount;
  final String time;
  final String distance;
  final String cuisine;
  final String priceForTwo;
  final String imageUrl;
  final String offerText;
  final bool isGourmet;
  final bool isBolt;

  const CategoryRestaurantModel({
    required this.id,
    required this.name,
    required this.rating,
    required this.ratingCount,
    required this.time,
    required this.distance,
    required this.cuisine,
    required this.priceForTwo,
    required this.imageUrl,
    required this.offerText,
    this.isGourmet = false,
    this.isBolt = false,
  });
}

class CategoryRestaurantsMockData {
  static const Map<String, List<CategoryBannerModel>> categoryBanners = {
    'Pizzas': [
      CategoryBannerModel(
        title: 'The Pizza Bakery - Wood Fired Sourdough',
        subtitle: 'Best In Gourmet',
        offerText: 'GET 70% OFF',
        imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
      ),
      CategoryBannerModel(
        title: 'LeanCrust Pizza - ThinCrust Experts',
        subtitle: '4.7 • 20-30 mins',
        offerText: 'GET 70% OFF',
        imageUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600',
      ),
      CategoryBannerModel(
        title: 'Domino\'s Pizza',
        subtitle: '15-20 MINS',
        offerText: 'Items at ₹65',
        imageUrl: 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=600',
      ),
    ],
  };

  static const Map<String, List<CategoryRestaurantModel>> categoryRestaurants = {
    'Pizzas': [
      CategoryRestaurantModel(
        id: 'p_res_1',
        name: 'Domino\'s Pizza',
        rating: '4.3',
        ratingCount: '22K+',
        time: '15-20 MINS',
        distance: '1.2 km',
        cuisine: 'Pizzas, Italian',
        priceForTwo: '₹400 for two',
        offerText: 'Items at ₹65',
        imageUrl: 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=600',
        isBolt: true,
      ),
      CategoryRestaurantModel(
        id: 'p_res_2',
        name: 'The Pizza Bakery - Wood Fired Sourdough',
        rating: '4.5',
        ratingCount: '2.5K+',
        time: '25-30 MINS',
        distance: '2.1 km',
        cuisine: 'Pizzas, Pastas, Italian',
        priceForTwo: '₹500 for two',
        offerText: '70% off upto ₹140',
        imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
        isGourmet: true,
      ),
      CategoryRestaurantModel(
        id: 'p_res_3',
        name: '99 Slice by Olio Pizza',
        rating: '4.0',
        ratingCount: '140',
        time: '35-40 MINS',
        distance: '2.7 km',
        cuisine: 'Pizzas, Pastas',
        priceForTwo: '₹300 for two',
        offerText: '70% off upto ₹140',
        imageUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600',
      ),
      CategoryRestaurantModel(
        id: 'p_res_4',
        name: 'La Pino\'z Pizza',
        rating: '4.2',
        ratingCount: '6.1K+',
        time: '40-45 MINS',
        distance: '4.1 km',
        cuisine: 'Pizzas, Fast Food',
        priceForTwo: '₹300 for two',
        offerText: '70% off upto ₹140',
        imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600',
      ),
      CategoryRestaurantModel(
        id: 'p_res_5',
        name: 'Brik Oven - Original Sourdough Pizzas',
        rating: '4.3',
        ratingCount: '2.1K+',
        time: '40-45 MINS',
        distance: '4.1 km',
        cuisine: 'Italian, Pizzas',
        priceForTwo: '₹800 for two',
        offerText: '₹80 off above ₹399',
        imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
        isGourmet: true,
      ),
    ],
  };
}