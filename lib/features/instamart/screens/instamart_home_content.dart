import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_floating_cart_bar.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_grid_section.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_search_bar.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_sub_categories_bar.dart';

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

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Instamart Top Purple Header Extension (Search + Sub-categories)
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

              // Categories Grid Lists
              InstamartGridSection(
                sectionTitle: 'Fresh items',
                items: freshItems,
              ),
              height20,
              InstamartGridSection(
                sectionTitle: 'Grocery & Kitchen',
                items: groceryItems,
              ),
              height20,
              InstamartGridSection(
                sectionTitle: 'Snacks & drinks',
                items: snacksItems,
              ),
              height90, // Bottom padding for cart overlay space
            ],
          ),
        ),

        // Floating Cart Overlay Bar
        const Positioned(
          left: 0,
          right: 0,
          bottom: 12,
          child: InstamartFloatingCartBar(),
        ),
      ],
    );
  }
}