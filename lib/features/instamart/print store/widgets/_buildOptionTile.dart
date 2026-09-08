import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildOptionTile({
    required String label,
    required String subLabel,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.instamartLightBlue
              : AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected ? AppColors.instamartBlue : AppColors.borderGrey,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.instamartBlue : AppColors.textSecondary,
              size: 20.sp,
            ),
            width8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTextStyles.storeTitle.copyWith(
                    color: isSelected
                        ? AppColors.instamartBlue
                        : AppColors.textPrimary,
                  ),
                ),
                Text(
                  subLabel,
                  style: AppTextStyles.caption.copyWith(
                    fontSize: 10.sp,
                    color: AppColors.textHint,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }