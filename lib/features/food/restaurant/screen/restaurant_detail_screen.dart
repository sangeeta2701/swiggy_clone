import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/build_Chip_Filter.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/build_Toggle_Filter.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/menu_item_card.dart';
import '../data/restaurant_mock_data.dart';


class RestaurantDetailScreen extends StatefulWidget {
  final String restaurantName;

  const RestaurantDetailScreen({
    super.key,
    required this.restaurantName,
  });

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  final Map<String, int> _cart = {};
  bool _isVegOnly = false;
  bool _isNonVegOnly = false;

  void _showMenuBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFF11141A),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: RestaurantMockData.sampleMenu.map((cat) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cat.categoryName,
                      style: AppTextStyles.buttonText.copyWith(
                        fontSize: 15.sp,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      '${cat.items.length}',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textHint,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final int totalCartCount = _cart.values.fold(0, (sum, count) => sum + count);

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
          padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                  'Search in ${widget.restaurantName}...',
                  style: AppTextStyles.subtitle.copyWith(fontSize: 12.sp),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.mic, size: 18.sp, color: AppColors.primaryOrange),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_add_outlined, color: AppColors.homePurple, size: 22.sp),
            onPressed: () {},
          ),
          width8,
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // 1. Top Filters Row
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Row(
                    children: [
                      buildToggleFilter('Veg', _isVegOnly, (val) {
                        setState(() {
                          _isVegOnly = val;
                          if (val) _isNonVegOnly = false;
                        });
                      }, AppColors.vegGreen),
                      width8,
                      buildToggleFilter('Non-Veg', _isNonVegOnly, (val) {
                        setState(() {
                          _isNonVegOnly = val;
                          if (val) _isVegOnly = false;
                        });
                      }, AppColors.errorRed),
                      width8,
                      buildChipFilter('EatRight', icon: Icons.verified),
                      width8,
                      buildChipFilter('Ratings 4.0+'),
                    ],
                  ),
                ),
              ),

              // 2. Expandable Accordion Menu Sections
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, catIndex) {
                    final category = RestaurantMockData.sampleMenu[catIndex];

                    final filteredItems = category.items.where((item) {
                      if (_isVegOnly) return item.isVeg;
                      if (_isNonVegOnly) return !item.isVeg;
                      return true;
                    }).toList();

                    if (filteredItems.isEmpty) return const SizedBox.shrink();

                    return Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                          '${category.categoryName} (${filteredItems.length})',
                          style: AppTextStyles.sectionHeader.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        children: filteredItems.map((item) {
                          return MenuItemCard(
                            item: item,
                            count: _cart[item.id] ?? 0,
                            onAdd: () {
                              setState(() => _cart[item.id] = (_cart[item.id] ?? 0) + 1);
                            },
                            onRemove: () {
                              setState(() {
                                if (_cart.containsKey(item.id)) {
                                  if (_cart[item.id]! > 1) {
                                    _cart[item.id] = _cart[item.id]! - 1;
                                  } else {
                                    _cart.remove(item.id);
                                  }
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                    );
                  },
                  childCount: RestaurantMockData.sampleMenu.length,
                ),
              ),

              SliverToBoxAdapter(child: height90),
            ],
          ),

          // 3. Floating Menu Menu Button
          Positioned(
            right: 16.w,
            bottom: 24.h,
            child: GestureDetector(
              onTap: _showMenuBottomSheet,
              child: Container(
                width: 60.r,
                height: 60.r,
                decoration: const BoxDecoration(
                  color: Color(0xFF11141A),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restaurant_menu, color: AppColors.white, size: 20.sp),
                    height2,
                    Text(
                      'MENU',
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w900,
                        color: AppColors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 

 
}