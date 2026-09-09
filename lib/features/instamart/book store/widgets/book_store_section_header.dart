import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class BookStoreSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const BookStoreSectionHeader({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book_rounded, color: Colors.pinkAccent, size: 20.sp),
            width8,
            Text(
              title,
              style: AppTextStyles.instamartSectionHeader.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF1B4965),
              ),
            ),
            width8,
            Icon(Icons.menu_book_rounded, color: Colors.pinkAccent, size: 20.sp),
          ],
        ),
        if (subtitle != null) ...[
          height2,
          Text(
            subtitle!,
            style: AppTextStyles.caption.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ],
    );
  }
}