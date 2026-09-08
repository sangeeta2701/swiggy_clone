import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildPromiseCard({
  required IconData icon,
  required String title,
  required String desc,
}) {
  return Container(
    padding: EdgeInsets.all(12.r),
    decoration: BoxDecoration(
      color: AppColors.instamartBadgeYellow.withOpacity(0.9),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.textPrimary, size: 20.sp),
        height8,
        Text(
          title,
          style: AppTextStyles.storeTitle,
        ),
        height4,
        Text(
          desc,
          style: AppTextStyles.caption.copyWith(
            fontSize: 10.sp,
            color: AppColors.textPrimary.withOpacity(0.7),
            height: 1.3,
          ),
        ),
      ],
    ),
  );
}