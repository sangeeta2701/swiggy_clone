import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

Widget buildFilterRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      child: Row(
        children: [
          _buildFilterChip(icon: Icons.tune, label: ''),
          width8,
          _buildFilterChip(label: 'Sort By', icon: Icons.keyboard_arrow_down),
          width8,
          _buildFilterChip(label: 'Brand', icon: Icons.keyboard_arrow_down),
          width8,
          _buildFilterChip(
            label: 'Price Drop',
            icon: Icons.trending_down,
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }
   Widget _buildFilterChip({
    required String label,
    IconData? icon,
    Color? iconColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderGrey),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14.sp, color: iconColor ?? AppColors.textPrimary),
            if (label.isNotEmpty) width4,
          ],
          if (label.isNotEmpty)
            Text(
              label,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
        ],
      ),
    );
  }