import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/screen/restaurant_detail_screen.dart';
import '../../data/category_restaurants_mock_data.dart';

class CategoryRestaurantCard extends StatelessWidget {
  final CategoryRestaurantModel restaurant;

  const CategoryRestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantDetailScreen(
              restaurantName: restaurant.name,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Restaurant Banner Stack
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    restaurant.imageUrl,
                    height: 180.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        stops: const [0.5, 1.0],
                      ),
                    ),
                  ),
                ),
                // Bookmark / Favorite Icon
                Positioned(
                  top: 12.h,
                  right: 12.w,
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.white,
                    size: 22.sp,
                  ),
                ),
                // Discount Tag Bottom-Left
                Positioned(
                  bottom: 12.h,
                  left: 12.w,
                  child: Row(
                    children: [
                      Icon(Icons.percent, color: AppColors.primaryOrange, size: 14.sp),
                      width4,
                      Text(
                        restaurant.offerText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                // Delivery Badge Bottom-Right
                Positioned(
                  bottom: 12.h,
                  right: 12.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          restaurant.time,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          'FREE DELIVERY',
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primaryOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            height8,

            // Gourmet Tag
            if (restaurant.isGourmet) ...[
              Text(
                'gourmet',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.primaryOrange,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              height2,
            ],

            // Title
            Text(
              restaurant.name,
              style: AppTextStyles.screenTitle.copyWith(fontSize: 16.sp),
            ),
            height4,

            // Rating & Distance
            Row(
              children: [
                Icon(Icons.stars, color: AppColors.successGreen, size: 16.sp),
                width4,
                Text(
                  '${restaurant.rating} (${restaurant.ratingCount})',
                  style: AppTextStyles.caption.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                width4,
                Text('• ${restaurant.distance}', style: AppTextStyles.caption),
              ],
            ),
            height2,

            // Cuisines & Price
            Text(
              '${restaurant.cuisine} • ${restaurant.priceForTwo}',
              style: AppTextStyles.caption,
            ),
          ],
        ),
      ),
    );
  }
}