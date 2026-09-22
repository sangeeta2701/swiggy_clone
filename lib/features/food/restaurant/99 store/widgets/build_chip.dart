 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildChip({
    required String label,
    required bool isSelected,
    VoidCallback? onTap,
    VoidCallback? onClear,
    int? badgeNumber,
    bool hasDropdown = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryOrange.withOpacity(0.08)
              : AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.primaryOrange : AppColors.borderGrey,
            width: isSelected ? 1.5 : 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (badgeNumber != null) ...[
              Container(
                padding: EdgeInsets.all(4.r),
                decoration: const BoxDecoration(
                  color: AppColors.primaryOrange,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$badgeNumber',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width4,
            ],
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? AppColors.primaryOrange : AppColors.textPrimary,
              ),
            ),
            if (onClear != null) ...[
              width4,
              GestureDetector(
                onTap: onClear,
                child: Icon(
                  Icons.close,
                  size: 14.sp,
                  color: AppColors.primaryOrange,
                ),
              ),
            ] else if (hasDropdown) ...[
              width4,
              Icon(
                Icons.keyboard_arrow_down,
                size: 16.sp,
                color: isSelected ? AppColors.primaryOrange : AppColors.textSecondary,
              ),
            ],
          ],
        ),
      ),
    );
  }