import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/category_grid_section.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/shop_by_store_section.dart';

class InstamartCategoriesScreen extends StatelessWidget {
  const InstamartCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // --- ENHANCED CATEGORIES MOCK DATA ---

final freshItems = [
  {
    'name': 'Fresh Vegetables',
    // Assorted fresh vegetables basket/pile
    'image': 'https://pngimg.com/uploads/vegetables/vegetables_PNG101657.png',
  },
  {
    'name': 'Fresh Fruits',
    // Mix of colorful fresh fruits
    'image': 'https://pngimg.com/uploads/fruit/fruit_PNG13.png',
  },
  {
    'name': 'Dairy, Bread and Eggs',
    // Milk bottle, egg crate, and bread combination
    'image': 'https://images.unsplash.com/photo-1628088062854-d1870b4553da?w=300&q=80',
  },
  {
    'name': 'Meat and Seafood',
    // Fresh meat assortment
    'image': 'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?w=300&q=80',
  },
];

final groceryItems = [
  {
    'name': 'Atta, Rice and Dal',
    // Grains, lentils, and flour assortment
    'image': 'https://images.unsplash.com/photo-1586201375761-83865001e31c?w=300&q=80',
  },
  {
    'name': 'Masalas',
    // Indian spice bowl assortment
    'image': 'https://pngimg.com/uploads/spices/spices_PNG101452.png',
  },
  {
    'name': 'Oils and Ghee',
    // Cooking oil bottle and ghee jar
    'image': 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png',
  },
  {
    'name': 'Cereals and Breakfast',
    // Breakfast cereal bowl & oats
    'image': 'https://images.unsplash.com/photo-1521483451569-e33803c0330c?w=300&q=80',
  },
];

final snacksItems = [
  {
    'name': 'Cold Drinks and Juices',
    'image': 'https://pngimg.com/uploads/cocacola/cocacola_PNG22.png',
  },
  {
    'name': 'Ice Creams and Frozen...',
    'image': 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=300&q=80',
  },
  {
    'name': 'Chips and Namkeens',
    'image': 'https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=300&q=80',
  },
  {
    'name': 'Chocolates',
    'image': 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png',
  },
  {
    'name': 'Biscuits and Cakes',
    'image': 'https://images.unsplash.com/photo-1558961363-fa8fdf82db35?w=300&q=80',
  },
  {
    'name': 'Tea, Coffee and Milk dr...',
    'image': 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=300&q=80',
  },
  {
    'name': 'Sauces and Spreads',
    'image': 'https://images.unsplash.com/photo-1582293041079-7814c2f12063?w=300&q=80',
  },
  {
    'name': 'Sweet Corner',
    'image': 'https://images.unsplash.com/photo-1587314168485-3236d6710814?w=300&q=80',
  },
];
final beautyItems = [
  {
    'name': 'Bath and Body',
    // Soaps, body washes, and sponges assortment
    'image': 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=300&q=80',
  },
  {
    'name': 'Hair Care',
    // Shampoo, conditioner, and oil bottles
    'image': 'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=300&q=80',
  },
  {
    'name': 'Skincare',
    // Serums, moisturizers, and face cream jars
    'image': 'https://images.unsplash.com/photo-1556228720-195a672e8a03?w=300&q=80',
  },
  {
    'name': 'Makeup',
    // Lipstick, brushes, and cosmetics palette
    'image': 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=300&q=80',
  },
  {
    'name': 'Feminine Hygiene',
    // Organic pads, wipes, and care products
    'image': 'https://images.unsplash.com/photo-1556228722-d11917a15998?w=300&q=80',
  },
  {
    'name': 'Sexual Wellness',
    // Wellness & care essentials bundle
    'image': 'https://images.unsplash.com/photo-1608248597260-502287c80088?w=300&q=80',
  },
  {
    'name': 'Health and Pharma',
    // First aid kit, vitamins, and healthcare supplies
    'image': 'https://images.unsplash.com/photo-1471864190281-a93a3070b6de?w=300&q=80',
  },
  {
    'name': 'Baby Care',
    // Baby lotion, wipes, and powder assortment
    'image': 'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?w=300&q=80',
  },
];

final householdItems = [
  {
    'name': 'Home and Kitchen',
    // Kitchenware, utensils, and containers set
    'image': 'https://images.unsplash.com/photo-1556911220-e15b29be8c8f?w=300&q=80',
  },
  {
    'name': 'Puja Store',
    // Diyas, incense, and festive puja supplies
    'image': 'https://images.unsplash.com/photo-1602615576820-ea14b9e78d29?w=300&q=80',
  },
  {
    'name': 'Cleaners and Repell...',
    // Multi-surface cleaners and sprays
    'image': 'https://images.unsplash.com/photo-1585421514284-efb74c2b69ba?w=300&q=80',
  },
  {
    'name': 'Toys and Stationery',
    // Pens, notebooks, and creative supplies
    'image': 'https://images.unsplash.com/photo-1583485088034-697b5bc54ccd?w=300&q=80',
  },
  {
    'name': 'Electronics and Applia...',
    // Small appliances, cables, and gadgets setup
    'image': 'https://images.unsplash.com/photo-1550009158-9ebf69173e03?w=300&q=80',
  },
  {
    'name': 'Fashion',
    // T-shirts, socks, and basic apparel
    'image': 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=300&q=80',
  },
  {
    'name': 'Pet Supplies',
    // Pet food bowls, toys, and grooming products
    'image': 'https://images.unsplash.com/photo-1583337130417-3346a1be7dee?w=300&q=80',
  },
  {
    'name': 'Sports and Fitness',
    // Resistance bands, yoga mat, and fitness gear
    'image': 'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?w=300&q=80',
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
                CategoryGridSection(title: 'Fresh items', items: freshItems),
                height20,
                CategoryGridSection(title: 'Grocery & Kitchen', items: groceryItems),
                height20,
                CategoryGridSection(title: 'Snacks & drinks', items: snacksItems),
                height20,
                CategoryGridSection(title: 'Beauty & Wellness', items: beautyItems),
                height20,
                CategoryGridSection(title: 'Household & Lifestyle', items: householdItems),
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