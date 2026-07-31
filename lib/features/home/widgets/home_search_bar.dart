import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';


class HomeSearchBar extends ConsumerWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVeg = ref.watch(isVegOnlyProvider);

    return SizedBox(
      height: 48.h,
      child: Row(
        children: [
          //Search Box
          Expanded(
            child: Container(
              height: double.infinity,
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

          width16,

          // VEG Toggle Box
          GestureDetector(
            onTap: () =>
                ref.read(isVegOnlyProvider.notifier).state = !isVeg,
            child: Container(
              height: double.infinity,
              width: 52.w, // Fixed width prevents collapsing
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
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary,
                    ),
                  ),
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