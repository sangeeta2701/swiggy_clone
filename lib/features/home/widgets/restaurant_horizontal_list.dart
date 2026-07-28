import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';


class RestaurantHorizontalList extends StatelessWidget {
  const RestaurantHorizontalList({super.key});

  final List<Map<String, String>> items = const [
    {'name': 'Bakingo', 'offer': 'ITEMS AT ₹69'},
    {'name': "Domino's Pizza", 'offer': 'ITEMS AT ₹75'},
    {'name': 'Meghana Foods', 'offer': 'ITEMS AT ₹120'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Quick Toggle Pill Tabs
        Container(
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            color: AppColors.backgroundGrey,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'REORDER',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.successGreen,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'FOOD IN 15 MINS',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        height16,

        // Food Items Grid/Horizontal Cards
        SizedBox(
          height: 150.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final res = items[index];
              return SizedBox(
                width: 120.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 110.h,
                          decoration: BoxDecoration(
                            color: AppColors.borderGrey,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.fastfood,
                              size: 40.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 6.w,
                          top: 6.h,
                          child: Icon(
                            Icons.favorite_border,
                            color: AppColors.white,
                            size: 18.sp,
                          ),
                        ),
                        Positioned(
                          bottom: 6.h,
                          left: 6.w,
                          child: Text(
                            res['offer']!,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    height8,
                    Text(
                      res['name']!,
                      style: AppTextStyles.restaurantTitle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}