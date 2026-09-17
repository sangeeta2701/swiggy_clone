// class CategoryBannerModel {
//   final String title;
//   final String subtitle;
//   final String imageUrl;
//   final String offerText;

//   const CategoryBannerModel({
//     required this.title,
//     required this.subtitle,
//     required this.imageUrl,
//     required this.offerText,
//   });
// }

// class CategoryRestaurantModel {
//   final String id;
//   final String name;
//   final String rating;
//   final String ratingCount;
//   final String time;
//   final String distance;
//   final String cuisine;
//   final String priceForTwo;
//   final String imageUrl;
//   final String offerText;
//   final bool isGourmet;
//   final bool isBolt;

//   const CategoryRestaurantModel({
//     required this.id,
//     required this.name,
//     required this.rating,
//     required this.ratingCount,
//     required this.time,
//     required this.distance,
//     required this.cuisine,
//     required this.priceForTwo,
//     required this.imageUrl,
//     required this.offerText,
//     this.isGourmet = false,
//     this.isBolt = false,
//   });
// }

// class CategoryRestaurantsMockData {
//   static const Map<String, List<CategoryBannerModel>> categoryBanners = {
//     'Pizzas': [
//       CategoryBannerModel(
//         title: 'The Pizza Bakery - Wood Fired Sourdough',
//         subtitle: 'Best In Gourmet',
//         offerText: 'GET 70% OFF',
//         imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
//       ),
//       CategoryBannerModel(
//         title: 'LeanCrust Pizza - ThinCrust Experts',
//         subtitle: '4.7 • 20-30 mins',
//         offerText: 'GET 70% OFF',
//         imageUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600',
//       ),
//       CategoryBannerModel(
//         title: 'Domino\'s Pizza',
//         subtitle: '15-20 MINS',
//         offerText: 'Items at ₹65',
//         imageUrl: 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=600',
//       ),
//     ],
//   };

//   static const Map<String, List<CategoryRestaurantModel>> categoryRestaurants = {
//     'Pizzas': [
//       CategoryRestaurantModel(
//         id: 'p_res_1',
//         name: 'Domino\'s Pizza',
//         rating: '4.3',
//         ratingCount: '22K+',
//         time: '15-20 MINS',
//         distance: '1.2 km',
//         cuisine: 'Pizzas, Italian',
//         priceForTwo: '₹400 for two',
//         offerText: 'Items at ₹65',
//         imageUrl: 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=600',
//         isBolt: true,
//       ),
//       CategoryRestaurantModel(
//         id: 'p_res_2',
//         name: 'The Pizza Bakery - Wood Fired Sourdough',
//         rating: '4.5',
//         ratingCount: '2.5K+',
//         time: '25-30 MINS',
//         distance: '2.1 km',
//         cuisine: 'Pizzas, Pastas, Italian',
//         priceForTwo: '₹500 for two',
//         offerText: '70% off upto ₹140',
//         imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
//         isGourmet: true,
//       ),
//       CategoryRestaurantModel(
//         id: 'p_res_3',
//         name: '99 Slice by Olio Pizza',
//         rating: '4.0',
//         ratingCount: '140',
//         time: '35-40 MINS',
//         distance: '2.7 km',
//         cuisine: 'Pizzas, Pastas',
//         priceForTwo: '₹300 for two',
//         offerText: '70% off upto ₹140',
//         imageUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600',
//       ),
//       CategoryRestaurantModel(
//         id: 'p_res_4',
//         name: 'La Pino\'z Pizza',
//         rating: '4.2',
//         ratingCount: '6.1K+',
//         time: '40-45 MINS',
//         distance: '4.1 km',
//         cuisine: 'Pizzas, Fast Food',
//         priceForTwo: '₹300 for two',
//         offerText: '70% off upto ₹140',
//         imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600',
//       ),
//       CategoryRestaurantModel(
//         id: 'p_res_5',
//         name: 'Brik Oven - Original Sourdough Pizzas',
//         rating: '4.3',
//         ratingCount: '2.1K+',
//         time: '40-45 MINS',
//         distance: '4.1 km',
//         cuisine: 'Italian, Pizzas',
//         priceForTwo: '₹800 for two',
//         offerText: '₹80 off above ₹399',
//         imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
//         isGourmet: true,
//       ),
//     ],
//   };
// } 


import 'package:flutter/material.dart';

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
  // Shared South Indian Restaurants Master Entities
  static const _paakashala = CategoryRestaurantModel(
    id: 'si_res_1',
    name: 'Paakashala',
    rating: '4.3',
    ratingCount: '15K+',
    time: '15-20 MINS',
    distance: '1.5 km',
    cuisine: 'South Indian, North Indian',
    priceForTwo: '₹300 for two',
    offerText: '70% off upto ₹140',
    imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
  );

  static const _udupiGardenia = CategoryRestaurantModel(
    id: 'si_res_2',
    name: 'Udupi Gardenia',
    rating: '4.2',
    ratingCount: '2.0K+',
    time: '25-30 MINS',
    distance: '3.6 km',
    cuisine: 'Chinese, Indian',
    priceForTwo: '₹250 for two',
    offerText: '70% off upto ₹140',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
  );

  static const _sriUdupiPark = CategoryRestaurantModel(
    id: 'si_res_3',
    name: 'Sri Udupi Park',
    rating: '4.2',
    ratingCount: '14K+',
    time: '15-20 MINS',
    distance: '2.1 km',
    cuisine: 'South Indian, North Indian',
    priceForTwo: '₹200 for two',
    offerText: '₹100 off above ₹249',
    imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
    isBolt: true,
  );

  static const _sriUdupiSagar = CategoryRestaurantModel(
    id: 'si_res_4',
    name: 'Sri Udupi Sagar',
    rating: '4.3',
    ratingCount: '6.3K+',
    time: '40-50 MINS',
    distance: '5.6 km',
    cuisine: 'South Indian, North Indian',
    priceForTwo: '₹150 for two',
    offerText: 'Items at ₹35',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
  );

  static const _regionalCuisine = CategoryRestaurantModel(
    id: 'si_res_5',
    name: 'Regional Cuisine@5',
    rating: '4.0',
    ratingCount: '236',
    time: '20-25 MINS',
    distance: '2.0 km',
    cuisine: 'South Indian, North Indian',
    priceForTwo: '₹400 for two',
    offerText: 'Items at ₹29 • 15% extra off',
    imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
  );

  static const _bidadiTatteIdli = CategoryRestaurantModel(
    id: 'si_res_6',
    name: 'Bidadi Thatte Idli Hotel',
    rating: '4.2',
    ratingCount: '5.1K+',
    time: '25-30 MINS',
    distance: '4.6 km',
    cuisine: 'North Indian, Beverages',
    priceForTwo: '₹200 for two',
    offerText: '70% off upto ₹140',
    imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
  );

  static const _vinayaCafe = CategoryRestaurantModel(
    id: 'si_res_7',
    name: 'Vinaya Cafe',
    rating: '4.4',
    ratingCount: '3.3K+',
    time: '35-40 MINS',
    distance: '4.9 km',
    cuisine: 'North Indian, South Indian',
    priceForTwo: '₹250 for two',
    offerText: 'Items at ₹9 • 15% extra off',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
  );

  static const _halliJonneBiriyani = CategoryRestaurantModel(
    id: 'si_res_8',
    name: 'Halli Jonne Biriyani',
    rating: '4.5',
    ratingCount: '24K+',
    time: '35-40 MINS',
    distance: '6.8 km',
    cuisine: 'South Indian, Biryani',
    priceForTwo: '₹300 for two',
    offerText: '₹550 off above ₹2499',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
  );

  // Category Auto-scroll Banners Mapping
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
    'Idli': [
      CategoryBannerModel(
        title: 'Paakashala',
        subtitle: '4.3 • 15-20 mins',
        offerText: 'GET 70% OFF',
        imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
      ),
      CategoryBannerModel(
        title: 'Bidadi Thatte Idli Hotel',
        subtitle: '4.2 • 25-30 mins',
        offerText: 'FLAT 125 OFF',
        imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
      ),
    ],
    'Dosa': [
      CategoryBannerModel(
        title: 'Paakashala',
        subtitle: '4.3 • 15-20 mins',
        offerText: 'GET 70% OFF',
        imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
      ),
      CategoryBannerModel(
        title: 'Davangere Benne Dosa Mane',
        subtitle: '4.5 • 30-35 mins',
        offerText: 'Items @109',
        imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
      ),
    ],
    'Vada': [
      CategoryBannerModel(
        title: 'Sri Udupi Park',
        subtitle: '4.2 • 15-20 mins',
        offerText: 'GET 50% OFF',
        imageUrl: 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=600',
      ),
    ],
    'Bath': [
      CategoryBannerModel(
        title: 'Udupi Gardenia',
        subtitle: '4.2 • 25-30 mins',
        offerText: 'ITEMS AT ₹65',
        imageUrl: 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600',
      ),
    ],
  };

  // Category Restaurants Order Rearrangement Mapping
  static final Map<String, List<CategoryRestaurantModel>> categoryRestaurants = {
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
    'Dosa': [
      _udupiGardenia,
      _sriUdupiPark,
      _sriUdupiSagar,
      _regionalCuisine,
      _vinayaCafe,
      _halliJonneBiriyani,
      _paakashala,
      _bidadiTatteIdli,
    ],
    'Idli': [
      _bidadiTatteIdli,
      _paakashala,
      _udupiGardenia,
      _sriUdupiPark,
      _sriUdupiSagar,
      _regionalCuisine,
      _vinayaCafe,
    ],
    'Vada': [
      _sriUdupiPark,
      _regionalCuisine,
      _paakashala,
      _udupiGardenia,
      _bidadiTatteIdli,
      _vinayaCafe,
      _sriUdupiSagar,
    ],
    'Bath': [
      _udupiGardenia,
      _regionalCuisine,
      _paakashala,
      _sriUdupiPark,
      _halliJonneBiriyani,
      _vinayaCafe,
      _bidadiTatteIdli,
    ],
  };
}