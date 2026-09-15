 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildRestaurantHeaderCard({required String restaurantName}) {
  return Container(
    color: const Color(0xFF1C0A0A),
    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
    child: Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.verified,
                            color: AppColors.instamartBlue, size: 16.sp),
                        width4,
                        Text(
                          'Swiggy Seal',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.instamartBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height4,
                    Text(
                      restaurantName, // <--- Using parameter
                      style: AppTextStyles.screenTitle
                          .copyWith(fontSize: 18.sp),
                    ),
                    height4,
                    Text(
                      '35-40 mins | Kanakapura Ro... ▼',
                      style: AppTextStyles.subtitle
                          .copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 8.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.successGreen,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                        Icon(Icons.star,
                            color: AppColors.white, size: 12.sp),
                      ],
                    ),
                    Text(
                      '23K+ ratings',
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.9),
                        fontSize: 8.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(height: 24, color: AppColors.dividerGrey),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6.r),
                decoration: const BoxDecoration(
                  color: AppColors.primaryOrange,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.percent,
                    color: AppColors.white, size: 14.sp),
              ),
              width12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '70% off upto ₹140',
                      style: AppTextStyles.restaurantTitle
                          .copyWith(fontSize: 13.sp),
                    ),
                    Text(
                      'USE TREATS',
                      style: AppTextStyles.caption.copyWith(fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
              Text(
                '1/8',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.primaryOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
