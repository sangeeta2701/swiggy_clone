import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';

class CategoryHeaderTopBar extends StatelessWidget {
  final List<String> topPills;
  final int activeIndex;
  final ValueChanged<int> onPillSelected;

  const CategoryHeaderTopBar({
    super.key,
    required this.topPills,
    required this.activeIndex,
    required this.onPillSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: List.generate(topPills.length, (index) {
            final isSelected = activeIndex == index;
            return GestureDetector(
              onTap: () => onPillSelected(index),
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
                  topPills[index],
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
}