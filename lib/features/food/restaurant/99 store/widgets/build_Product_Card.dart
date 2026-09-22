 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/data/store_99_mock_data.dart';

Widget buildProductCard(Store99ItemModel item) {
  // Determine dynamic theme colors based on item.isVeg flag
  final Color vegColor = item.isVeg ? AppColors.vegGreen : AppColors.errorRed;

  return Container(
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Item Image Stack
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(
                item.imageUrl,
                height: 125.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            if (item.calorieBadge != null)
              Positioned(
                top: 8.h,
                right: 8.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  decoration: BoxDecoration(
                    color: AppColors.vegGreen,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.eco, color: AppColors.white, size: 10.sp),
                      Text(
                        item.calorieBadge!,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        height8,

        // Rating Row & Veg / Non-Veg Indicator Symbol
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(1.5.r),
              decoration: BoxDecoration(
                border: Border.all(color: vegColor, width: 1.2),
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Icon(
                item.isVeg ? Icons.circle : Icons.change_history_rounded,
                size: 5.sp,
                color: vegColor,
              ),
            ),
            const Spacer(),
            Icon(Icons.star_rounded, size: 14.sp, color: AppColors.successGreen),
            Text(
              '${item.rating} (${item.ratingCount})',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.successGreen,
              ),
            ),
          ],
        ),
        height2,

        // Item Name
        Text(
          item.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.listTileTitle.copyWith(fontSize: 13.sp),
        ),

        if (item.caloriesText != null) ...[
          Text(
            item.caloriesText!,
            style: TextStyle(fontSize: 10.sp, color: AppColors.primaryOrange),
          ),
        ],
        height4,

        // Pricing & ADD Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '₹${item.originalPrice.toInt()}',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textHint,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                width4,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                  color: Colors.amber,
                  child: Text(
                    '₹${item.discountedPrice.toInt()}',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w900,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
              width: 60.w,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  side: const BorderSide(color: AppColors.borderGrey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  'ADD',
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.successGreen,
                  ),
                ),
              ),
            ),
          ],
        ),
        height4,

        // Restaurant Subtitle
        Text(
          '${item.restaurantName} • ${item.deliveryTime}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.caption.copyWith(fontSize: 9.sp),
        ),
      ],
    ),
  );
}