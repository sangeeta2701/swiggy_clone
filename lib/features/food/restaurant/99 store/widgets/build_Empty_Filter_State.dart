import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/provider/store_99_filter_provider.dart';

Widget buildEmptyFilterState(Store99FilterNotifier notifier) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.search_off_rounded, size: 48.sp, color: AppColors.textHint),
            height12,
            Text('No items found matching active filters.',
                style: AppTextStyles.subtitle),
            height12,
            ElevatedButton(
              onPressed: notifier.clearAllFilters,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryOrange,
              ),
              child: Text('Clear Filters', style: AppTextStyles.buttonText),
            ),
          ],
        ),
      ),
    );
  }