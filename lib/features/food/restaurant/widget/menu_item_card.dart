import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import '../models/restaurant_menu_model.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem item;
  final int count;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const MenuItemCard({
    super.key,
    required this.item,
    required this.count,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Side Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Veg Icon & Bestseller Badge
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.r),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: item.isVeg ? AppColors.vegGreen : AppColors.errorRed,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Icon(
                        Icons.circle,
                        size: 8.sp,
                        color: item.isVeg ? AppColors.vegGreen : AppColors.errorRed,
                      ),
                    ),
                    if (item.isBestseller) ...[
                      width8,
                      Icon(Icons.star_rounded, size: 14.sp, color: AppColors.errorRed),
                      width4,
                      Text(
                        'Bestseller',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.errorRed,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ],
                ),
                height8,

                // Title
                Text(item.name, style: AppTextStyles.listTileTitle),
                height4,

                // Price
                Text(
                  '₹${item.price.toInt()}',
                  style: AppTextStyles.restaurantTitle.copyWith(fontSize: 14.sp),
                ),
                height8,

                // Rating & Count
                Row(
                  children: [
                    Icon(Icons.star, size: 12.sp, color: AppColors.successGreen),
                    width4,
                    Text(
                      '${item.rating} (${item.ratingCount})',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.successGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                if (item.calories != null) ...[
                  height4,
                  Text(
                    item.calories!,
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.primaryOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                  ),
                ],

                height8,
                // Description
                Text(
                  item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.subtitle.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          width16,

          // Right Side Image & Floating ADD/Stepper Button
          SizedBox(
            width: 130.w,
            height: 125.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    item.imageUrl,
                    width: 130.w,
                    height: 110.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 15.w,
                  right: 15.w,
                  child: Container(
                    height: 36.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.borderGrey),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: count == 0
                        ? InkWell(
                            onTap: onAdd,
                            child: Center(
                              child: Text(
                                'ADD',
                                style: TextStyle(
                                  color: AppColors.successGreen,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: onRemove,
                                child: Icon(Icons.remove, size: 16.sp, color: AppColors.successGreen),
                              ),
                              Text(
                                '$count',
                                style: TextStyle(
                                  color: AppColors.successGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                              InkWell(
                                onTap: onAdd,
                                child: Icon(Icons.add, size: 16.sp, color: AppColors.successGreen),
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}