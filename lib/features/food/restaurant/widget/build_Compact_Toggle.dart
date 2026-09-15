 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

  Widget buildCompactToggle(
    String label,
    bool value,
    ValueChanged<bool> onChanged,
    Color activeColor,
  ) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: value ? activeColor : AppColors.borderGrey,
            width: value ? 1.2 : 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(1.5.r),
              decoration: BoxDecoration(
                border: Border.all(color: activeColor, width: 1.2),
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Icon(Icons.circle, size: 5.sp, color: activeColor),
            ),
            width4,
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24.w,
              height: 12.h,
              padding: EdgeInsets.all(1.5.r),
              decoration: BoxDecoration(
                color: value ? activeColor.withOpacity(0.2) : Colors.grey[300],
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                alignment:
                    value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 9.r,
                  height: 9.r,
                  decoration: BoxDecoration(
                    color: value ? activeColor : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }