import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_grid_section.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_search_bar.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_sub_categories_bar.dart';
import 'package:swiggy_clone/features/instamart/widgets/navigateToCategoryProducts.dart';

class InstamartHomeContent extends ConsumerWidget {
  const InstamartHomeContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final freshItems = [
      {'name': 'Fresh Vegetables', 'image': 'https://cdn-icons-png.flaticon.com/512/2153/2153788.png'},
      {'name': 'Fresh Fruits', 'image': 'https://cdn-icons-png.flaticon.com/512/3194/3194766.png'},
      {'name': 'Dairy, Bread & Eggs', 'image': 'https://cdn-icons-png.flaticon.com/512/3050/3050158.png'},
      {'name': 'Meat & Seafood', 'image': 'https://cdn-icons-png.flaticon.com/512/1046/1046751.png'},
    ];

    final groceryItems = [
      {'name': 'Atta, Rice & Dal', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553691.png'},
      {'name': 'Masalas & Spices', 'image': 'https://cdn-icons-png.flaticon.com/512/684/684831.png'},
      {'name': 'Oils & Ghee', 'image': 'https://cdn-icons-png.flaticon.com/512/2982/2982889.png'},
      {'name': 'Cereals & Breakfast', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553658.png'},
    ];

   final snacksItems = [
      {
        'name': 'Cold Drinks and Juices',
        'image': 'https://pngimg.com/uploads/cocacola/cocacola_PNG22.png',
      },
      {
        'name': 'Ice Creams and Frozen...',
        'image': 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png',
      },
      {
        'name': 'Chips and Namkeens',
        'image': 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png',
      },
      {
        'name': 'Chocolates',
        'image': 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png',
      },
      {
        'name': 'Biscuits and Cakes',
        'image': 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png',
      },
      {
        'name': 'Tea, Coffee and Milk dr...',
        'image': 'https://pngimg.com/uploads/tea/tea_PNG98881.png',
      },
      {
        'name': 'Sauces and Spreads',
        'image': 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png',
      },
      {
        'name': 'Sweet Corner',
        'image': 'https://pngimg.com/uploads/candy/candy_PNG98.png',
      },
    ];

    final beautyItems = [
      {
        'name': 'Bath and Body',
        'image': 'https://pngimg.com/uploads/soap/soap_PNG42.png',
      },
      {
        'name': 'Hair Care',
        'image': 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png',
      },
      {
        'name': 'Skincare',
        'image': 'https://pngimg.com/uploads/cream/cream_PNG23.png',
      },
      {
        'name': 'Makeup',
        'image': 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png',
      },
      {
        'name': 'Feminine Hygiene',
        'image': 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png',
      },
      {
        'name': 'Sexual Wellness',
        'image': 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png',
      },
      {
        'name': 'Health and Pharma',
        'image': 'https://pngimg.com/uploads/pills/pills_PNG98.png',
      },
      {
        'name': 'Baby Care',
        'image': 'https://pngimg.com/uploads/baby/baby_PNG52680.png',
      },
    ];

    final householdItems = [
      {
        'name': 'Home and Kitchen',
        'image': 'https://pngimg.com/uploads/frying_pan/frying_pan_PNG9.png',
      },
      {
        'name': 'Puja Store',
        'image': 'https://pngimg.com/uploads/candle/candle_PNG3120.png',
      },
      {
        'name': 'Cleaners and Repell...',
        'image': 'https://pngimg.com/uploads/detergent/detergent_PNG21.png',
      },
      {
        'name': 'Toys and Stationery',
        'image': 'https://pngimg.com/uploads/pen/pen_PNG7413.png',
      },
      {
        'name': 'Electronics and Applia...',
        'image': 'https://pngimg.com/uploads/headphones/headphones_PNG101980.png',
      },
      {
        'name': 'Fashion',
        'image': 'https://pngimg.com/uploads/tshirt/tshirt_PNG5450.png',
      },
      {
        'name': 'Pet Supplies',
        'image': 'https://pngimg.com/uploads/dog_food/dog_food_PNG38.png',
      },
      {
        'name': 'Sports and Fitness',
        'image': 'https://pngimg.com/uploads/dumbbells/dumbbells_PNG16.png',
      },
    ];

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Instamart Top Purple Header
              Container(
                color: AppColors.homePurple,
                child: Column(
                  children: [
                    height12,
                    const InstamartSearchBar(),
                    height12,
                    const InstamartSubCategoriesBar(),
                    height12,
                  ],
                ),
              ),
              height16,

              // 1. Fresh Items
              InstamartGridSection(
                sectionTitle: 'Fresh items',
                items: freshItems,
                onItemTap: (sectionTitle, item) {
                  navigateToCategoryProducts(context, sectionTitle, item['name'] ?? '');
                },
              ),
              height20,

              // 2. Grocery & Kitchen
              InstamartGridSection(
                sectionTitle: 'Grocery & Kitchen',
                items: groceryItems,
                onItemTap: (sectionTitle, item) {
                  navigateToCategoryProducts(context, sectionTitle, item['name'] ?? '');
                },
              ),
              height20,

              // 3. Snacks & drinks
              InstamartGridSection(
                sectionTitle: 'Snacks & drinks',
                items: snacksItems,
                onItemTap: (sectionTitle, item) {
                  navigateToCategoryProducts(context, sectionTitle, item['name'] ?? '');
                },
              ),
              height20,

              // 4. Beauty & Wellness
              InstamartGridSection(
                sectionTitle: 'Beauty & Wellness',
                items: beautyItems,
                onItemTap: (sectionTitle, item) {
                  navigateToCategoryProducts(context, sectionTitle, item['name'] ?? '');
                },
              ),
              height20,

              // 5. Household & Lifestyle
              InstamartGridSection(
                sectionTitle: 'Household & Lifestyle',
                items: householdItems,
                onItemTap: (sectionTitle, item) {
                  navigateToCategoryProducts(context, sectionTitle, item['name'] ?? '');
                },
              ),
              height90, // Bottom padding
            ],
          ),
        ),
      ],
    );
  }
}