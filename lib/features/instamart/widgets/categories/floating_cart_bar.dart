import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class FloatingCartBar extends StatelessWidget {
  final int totalCount;
  final num totalPrice;

  const FloatingCartBar({
    super.key,
    required this.totalCount,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    if (totalCount == 0) return const SizedBox.shrink();

    return Positioned(
      left: 12.w,
      right: 12.w,
      bottom: 12.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.instamartBlue,
          borderRadius: BorderRadius.circular(12.r),
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
                Text(
                  '$totalCount ${totalCount == 1 ? 'ITEM' : 'ITEMS'}',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '₹$totalPrice',
                  style: AppTextStyles.buttonText,
                ),
              ],
            ),
            const Spacer(),
            Text('View Cart', style: AppTextStyles.buttonText),
            width4,
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 14.sp,
            ),
          ],
        ),
      ),
    );
  }
}