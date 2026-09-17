
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_auto_scroll_banner.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_carousel_selector.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_filter_chips_row.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_header_top_bar.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_restaurant_card.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_veg_toggle.dart';
import '../data/category_restaurants_mock_data.dart';

class CategoryItemsDetailScreen extends StatefulWidget {
  final String selectedCategory;
  final List<Map<String, String>> categoriesList;

  const CategoryItemsDetailScreen({
    super.key,
    required this.selectedCategory,
    required this.categoriesList,
  });

  @override
  State<CategoryItemsDetailScreen> createState() => _CategoryItemsDetailScreenState();
}

class _CategoryItemsDetailScreenState extends State<CategoryItemsDetailScreen> {
  late String _activeCategory;
  int _activeTopFilterIndex = 0;
  bool _isVegOnly = false;

  final List<String> _topPills = ['All', '99 store', 'Offers', 'Bolt', 'Gourmet'];

  @override
  void initState() {
    super.initState();
    _activeCategory = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    final banners = CategoryRestaurantsMockData.categoryBanners[_activeCategory] ?? [];
    final restaurants = CategoryRestaurantsMockData.categoryRestaurants[_activeCategory] ?? [];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 22.sp),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
          height: 38.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            color: AppColors.backgroundGrey,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Icon(Icons.search, size: 18.sp, color: AppColors.textSecondary),
              width8,
              Expanded(
                child: Text(
                  'Search for \'$_activeCategory\'',
                  style: AppTextStyles.subtitle.copyWith(fontSize: 12.sp),
                ),
              ),
              Icon(Icons.mic, size: 18.sp, color: AppColors.primaryOrange),
            ],
          ),
        ),
        actions: [
          CategoryVegToggle(
            isVegOnly: _isVegOnly,
            onToggle: (val) => setState(() => _isVegOnly = val),
          ),
          width12,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Top Subcategory Navigation Pills Bar
            CategoryHeaderTopBar(
              topPills: _topPills,
              activeIndex: _activeTopFilterIndex,
              onPillSelected: (index) => setState(() => _activeTopFilterIndex = index),
            ),

            height12,

            // 2. Horizontal Category Selector Carousel
            CategoryCarouselSelector(
              categoriesList: widget.categoriesList,
              activeCategory: _activeCategory,
              onCategorySelected: (category) => setState(() => _activeCategory = category),
            ),

            height16,

            // 3. Auto-Scrolling Banners
            if (banners.isNotEmpty) ...[
              CategoryAutoScrollBanner(banners: banners),
              height20,
            ],

            // 4. Filter Chips Row
            const CategoryFilterChipsRow(),

            height20,

            // 5. Section Header Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Restaurants to explore', style: AppTextStyles.sectionHeader),
                  Text('Featured Restaurants', style: AppTextStyles.caption),
                ],
              ),
            ),

            height16,

            // 6. Restaurants List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: restaurants.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: restaurants.length,
                      itemBuilder: (context, index) {
                        return CategoryRestaurantCard(
                          restaurant: restaurants[index],
                        );
                      },
                    ),
            ),

            height30,
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.restaurant_outlined, size: 48.sp, color: AppColors.textHint),
            height12,
            Text(
              'No restaurants serving $_activeCategory found near you.',
              style: AppTextStyles.subtitle,
            ),
          ],
        ),
      ),
    );
  }
}