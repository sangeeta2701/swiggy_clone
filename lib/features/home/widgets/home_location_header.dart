import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class HomeLocationHeader extends StatelessWidget {
  const HomeLocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.near_me, color: AppColors.white, size: 22.sp),
        width8,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Bangalore', style: AppTextStyles.locationTitle),
                  width4,
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.white,
                    size: 20.sp,
                  ),
                ],
              ),
              Text(
                'Vijayashree Layout, Hulemavu G...',
                style: AppTextStyles.locationSubtitle,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.menu, color: AppColors.white, size: 20.sp),
        ),
      ],
    );
  }
}