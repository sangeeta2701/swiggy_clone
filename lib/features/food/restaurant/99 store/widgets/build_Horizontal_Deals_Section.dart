 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildHorizontalDealsSection() {
    return SizedBox(
      height: 140.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) => width12,
        itemBuilder: (context, index) {
          final dealTitles = ['Masala Maggi', 'Veg Maggi', 'Cheese Maggi', 'Fried Rice'];
          final dealPrices = ['₹109', '₹79', '₹89', '₹99'];

          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=400',
                          fit: BoxFit.cover,
                          width: 120.w,
                          height: 85.h,
                        ),
                      ),
                      Positioned(
                        bottom: 6.h,
                        right: 6.w,
                        child: CircleAvatar(
                          radius: 12.r,
                          backgroundColor: AppColors.white,
                          child: Icon(Icons.add,
                              color: AppColors.successGreen, size: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  height4,
                  Text(
                    dealTitles[index],
                    style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    dealPrices[index],
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w900,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }