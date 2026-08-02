import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';

class InstamartSearchBar extends StatelessWidget {
  const InstamartSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 46.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for 'Fruits'",
                  hintStyle: AppTextStyles.searchHint,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.textSecondary,
                    size: 20.sp,
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.mic_none_outlined,
                        color: AppColors.textSecondary,
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                    ],
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.white.withOpacity(0.3)),
            ),
            child: Icon(
              Icons.bookmark_outline_rounded,
              color: AppColors.white,
              size: 22.sp,
            ),
          ),
        ],
      ),
    );
  }
}