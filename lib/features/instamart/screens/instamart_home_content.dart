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
      {'name': 'Cold Drinks & Juices', 'image': 'https://cdn-icons-png.flaticon.com/512/2405/2405479.png'},
      {'name': 'Ice Creams', 'image': 'https://cdn-icons-png.flaticon.com/512/938/938063.png'},
      {'name': 'Chips & Namkeens', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553691.png'},
      {'name': 'Chocolates', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
    ];

    final beautyItems = [
      {'name': 'Bath & Body', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Hair Care', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Skincare', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Makeup', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
    ];

    final householdItems = [
      {'name': 'Home & Kitchen', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Puja Store', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Cleaners & Repellents', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
      {'name': 'Toys & Stationery', 'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553645.png'},
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