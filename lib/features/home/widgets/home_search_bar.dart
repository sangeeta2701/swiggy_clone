import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';

class HomeSearchBar extends ConsumerWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVeg = ref.watch(isVegOnlyProvider);

    return SizedBox(
      height: 48.h,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Search Box Pill
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.textHint,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      "Search for 'Pizza'",
                      style: AppTextStyles.searchHint,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.mic,
                    color: AppColors.primaryOrange,
                    size: 20.sp,
                  ),
                ],
              ),
            ),
          ),

          // Explicit Gap between Search Pill and Veg Switch Pill
          SizedBox(width: 10.w),

          // 2. VEG Toggle Pill
          GestureDetector(
            onTap: () =>
                ref.read(isVegOnlyProvider.notifier).state = !isVeg,
            child: Container(
              width: 54.w,
              padding: EdgeInsets.symmetric(vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'VEG',
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textSecondary,
                      height: 1.0,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Icon(
                    isVeg ? Icons.toggle_on : Icons.toggle_off,
                    color: isVeg ? AppColors.vegGreen : AppColors.borderGrey,
                    size: 22.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}