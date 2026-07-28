import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';

class HomeSearchBar extends ConsumerWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVeg = ref.watch(isVegOnlyProvider);

    return Row(
      children: [
        // Search TextField
        Expanded(
          child: Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: AppColors.textHint, size: 20.sp),
                width8,
                Expanded(
                  child: Text(
                    "Search for 'Pizza'",
                    style: AppTextStyles.searchHint,
                  ),
                ),
                Icon(Icons.mic, color: AppColors.primaryOrange, size: 20.sp),
              ],
            ),
          ),
        ),
        width12,

        // VEG Mode Switch Button
        GestureDetector(
          onTap: () =>
              ref.read(isVegOnlyProvider.notifier).state = !isVeg,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'VEG',
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textSecondary,
                  ),
                ),
                Icon(
                  isVeg ? Icons.toggle_on : Icons.toggle_off,
                  color: isVeg ? AppColors.vegGreen : AppColors.borderGrey,
                  size: 24.sp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}