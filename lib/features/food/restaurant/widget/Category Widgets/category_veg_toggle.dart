import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class CategoryVegToggle extends StatelessWidget {
  final bool isVegOnly;
  final ValueChanged<bool> onToggle;

  const CategoryVegToggle({
    super.key,
    required this.isVegOnly,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onToggle(!isVegOnly),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isVegOnly ? AppColors.vegGreen : AppColors.borderGrey,
          ),
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
}