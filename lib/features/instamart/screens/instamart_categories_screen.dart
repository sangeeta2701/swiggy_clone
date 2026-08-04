import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/screens/InstamartCategoryProductsScreen.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/category_grid_section.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/shop_by_store_section.dart';

class InstamartCategoriesScreen extends StatelessWidget {
  const InstamartCategoriesScreen({super.key});

  void _navigateToProductsScreen(
    BuildContext context,
    String categoryName,
    String selectedSubCategory,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InstamartCategoryProductsScreen(
          categoryName: categoryName,
          selectedSubCategory: selectedSubCategory,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // --- HIGH QUALITY TRANSPARENT PNG CATEGORIES DATA ---

    final freshItems = [
      {
        'name': 'Fresh Vegetables',
        'image': 'https://pngimg.com/uploads/vegetables/vegetables_PNG101657.png',
      },
      {
        'name': 'Fresh Fruits',
        'image': 'https://pngimg.com/uploads/fruit/fruit_PNG13.png',
      },
      {
        'name': 'Dairy, Bread and Eggs',
        'image': 'https://pngimg.com/uploads/milk/milk_PNG99573.png',
      },
      {
        'name': 'Meat and Seafood',
        'image': 'https://pngimg.com/uploads/meat/meat_PNG3934.png',
      },
    ];

    final groceryItems = [
      {
        'name': 'Atta, Rice and Dal',
        'image': 'https://pngimg.com/uploads/rice/rice_PNG12.png',
      },
      {
        'name': 'Masalas',
        'image': 'https://pngimg.com/uploads/spices/spices_PNG101452.png',
      },
      {
        'name': 'Oils and Ghee',
        'image': 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png',
      },
      {
        'name': 'Cereals and Breakfast',
        'image': 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png',
      },
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

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          'Categories',
          style: AppTextStyles.categoriesHeader,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 26.sp,
              color: AppColors.textPrimary,
            ),
          ),
          width8,
        ],
      ),
      body: Stack(
        children: [
          // Scrollable Categories View
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height12,
                const ShopByStoreSection(),
                height20,
                CategoryGridSection(
                  title: 'Fresh items',
                  items: freshItems,
                  onItemTap: (sectionTitle, item) {
                    _navigateToProductsScreen(
                      context,
                      sectionTitle,
                      item['name'] ?? '',
                    );
                  },
                ),
                height20,
                CategoryGridSection(
                  title: 'Grocery & Kitchen',
                  items: groceryItems,
                  onItemTap: (sectionTitle, item) {
                    _navigateToProductsScreen(
                      context,
                      sectionTitle,
                      item['name'] ?? '',
                    );
                  },
                ),
                height20,
                CategoryGridSection(
                  title: 'Snacks & drinks',
                  items: snacksItems,
                  onItemTap: (sectionTitle, item) {
                    _navigateToProductsScreen(
                      context,
                      sectionTitle,
                      item['name'] ?? '',
                    );
                  },
                ),
                height20,
                CategoryGridSection(
                  title: 'Beauty & Wellness',
                  items: beautyItems,
                  onItemTap: (sectionTitle, item) {
                    _navigateToProductsScreen(
                      context,
                      sectionTitle,
                      item['name'] ?? '',
                    );
                  },
                ),
                height20,
                CategoryGridSection(
                  title: 'Household & Lifestyle',
                  items: householdItems,
                  onItemTap: (sectionTitle, item) {
                    _navigateToProductsScreen(
                      context,
                      sectionTitle,
                      item['name'] ?? '',
                    );
                  },
                ),
                height30,

                // --- INSTAMART BRAND FOOTER ---
                Center(
                  child: Column(
                    children: [
                      Text(
                        'instamart',
                        style: AppTextStyles.instamartFooterTitle,
                      ),
                      height4,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Crafted with ',
                            style: AppTextStyles.instamartFooterSubtitle,
                          ),
                          Icon(
                            Icons.favorite,
                            color: AppColors.instamartBlue,
                            size: 14.sp,
                          ),
                          Text(
                            ' in Bengaluru, India',
                            style: AppTextStyles.instamartFooterSubtitle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                height90, // Clearance for fixed delivery banner
              ],
            ),
          ),

          // --- STICKY FREE DELIVERY BANNER ---
          Positioned(
            left: 12.w,
            right: 12.w,
            bottom: 8.h,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                color: AppColors.freeDeliveryBg,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'FREE DELIVERY on orders above ₹99',
                  style: AppTextStyles.freeDeliveryText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}