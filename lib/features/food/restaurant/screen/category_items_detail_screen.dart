import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_auto_scroll_banner.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/Category%20Widgets/category_restaurant_card.dart';
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
          _buildVegToggle(),
          width12,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Top Subcategory Navigation Pills Bar
            _buildTopPillsBar(),

            height12,

            // 2. Horizontal WhatsInYourMind Category Selector
            _buildCategoryCarousel(),

            height16,

            // 3. Auto-Scrolling Horizontal Banners
            if (banners.isNotEmpty) ...[
              CategoryAutoScrollBanner(banners: banners),
              height20,
            ],

            // 4. Filter Chips Row
            _buildFilterChipsRow(),

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

  Widget _buildTopPillsBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: List.generate(_topPills.length, (index) {
            final isSelected = _activeTopFilterIndex == index;
            return GestureDetector(
              onTap: () => setState(() => _activeTopFilterIndex = index),
              child: Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.only(bottom: 4.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isSelected ? AppColors.primaryOrange : Colors.transparent,
                      width: 2.5,
                    ),
                  ),
                ),
                child: Text(
                  _topPills[index],
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: isSelected ? AppColors.primaryOrange : AppColors.textSecondary,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildCategoryCarousel() {
    return SizedBox(
      height: 95.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesList.length,
        separatorBuilder: (_, __) => width16,
        itemBuilder: (context, index) {
          final cat = widget.categoriesList[index];
          final String title = cat['title'] ?? '';
          final bool isSelected = title.toLowerCase() == _activeCategory.toLowerCase();

          return GestureDetector(
            onTap: () => setState(() => _activeCategory = title),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 58.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? AppColors.primaryOrange : Colors.transparent,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(cat['image'] ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (isSelected)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 8.r,
                          backgroundColor: AppColors.primaryOrange,
                          child: Icon(Icons.check, size: 10.sp, color: AppColors.white),
                        ),
                      ),
                  ],
                ),
                height4,
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: isSelected ? AppColors.primaryOrange : AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildFilterChipsRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          _buildChip(label: 'Filter', icon: Icons.tune),
          width8,
          _buildChip(label: 'Sort by', icon: Icons.keyboard_arrow_down),
          width8,
          _buildChip(label: '99 Store'),
          width8,
          _buildChip(label: 'Bolt 15 Mins', icon: Icons.bolt, iconColor: AppColors.primaryOrange),
        ],
      ),
    );
  }

  Widget _buildChip({required String label, IconData? icon, Color? iconColor}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderGrey),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14.sp, color: iconColor ?? AppColors.textPrimary),
            width4,
          ],
          Text(
            label,
            style: AppTextStyles.caption.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVegToggle() {
    return GestureDetector(
      onTap: () => setState(() => _isVegOnly = !_isVegOnly),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.borderGrey),
        ),
        child: Row(
          children: [
            Text(
              'VEG',
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.vegGreen,
              ),
            ),
            width4,
            Container(
              padding: EdgeInsets.all(1.r),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.vegGreen, width: 1.2),
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Icon(Icons.circle, size: 5.sp, color: AppColors.vegGreen),
            ),
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