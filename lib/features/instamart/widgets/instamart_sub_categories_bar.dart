import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/features/instamart/providers/instamart_providers.dart';


class InstamartSubCategoriesBar extends ConsumerWidget {
  const InstamartSubCategoriesBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(instamartSubTabProvider);

    final tabs = [
      {'title': 'All', 'icon': Icons.shopping_bag_outlined},
      {'title': 'Fresh', 'icon': Icons.eco_outlined},
      {'title': 'Electronics', 'icon': Icons.headphones_outlined},
      {'title': '50% Off', 'icon': Icons.percent_outlined},
      {'title': 'Monsoon', 'icon': Icons.umbrella_outlined},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final isSelected = selectedTab == index;
          return GestureDetector(
            onTap: () => ref.read(instamartSubTabProvider.notifier).state = index,
            child: Container(
              margin: EdgeInsets.only(right: 16.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20.r),
                border: isSelected ? Border.all(color: AppColors.textPrimary, width: 1.5) : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    tabs[index]['icon'] as IconData,
                    color: isSelected ? AppColors.textPrimary : AppColors.white,
                    size: 20.sp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    tabs[index]['title'] as String,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                      color: isSelected ? AppColors.textPrimary : AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}