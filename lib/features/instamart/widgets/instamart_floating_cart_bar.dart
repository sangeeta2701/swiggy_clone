import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';


class InstamartFloatingCartBar extends StatelessWidget {
  const InstamartFloatingCartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.instamartBlue,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.instamartBlue.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("CART", style: AppTextStyles.instamartCartText),
              Text(
                "2 ITEMS",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 14.sp),
        ],
      ),
    );
  }
}