 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildHeroBanner() {
    return Container(
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: const LinearGradient(
          colors: [Color(0xFF0072FF), Color(0xFF00C6FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '99 store',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                height4,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    'Meals at ₹99 + Free Delivery',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0052FF),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -10.w,
            bottom: -10.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(
                'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
                width: 140.w,
                height: 120.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }