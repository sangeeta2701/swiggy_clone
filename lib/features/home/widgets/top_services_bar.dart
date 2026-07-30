
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart'; // Note: check spelling 'contsnts' vs 'constants'
import 'package:swiggy_clone/features/home/provider/home_providers.dart';

class TopServicesBar extends ConsumerWidget {
  const TopServicesBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategoryIndex = ref.watch(selectedCategoryIndexProvider);

    // Explicitly type dynamic values so badges work without throwing type errors
    final List<Map<String, dynamic>> categories = const [
      {'title': 'Food', 'icon': '🍔'},
      {'title': 'Instamart', 'icon': '🛒', 'badge': '12 mins'},
      {'title': 'Dineout', 'icon': '🍽️'},
      {'title': 'Giftables', 'icon': '🎁'},
      {'title': 'Scenes', 'icon': '🪩'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          final isSelected = selectedCategoryIndex == index;
          final category = categories[index];

          return GestureDetector(
            onTap: () {
              ref.read(selectedCategoryIndexProvider.notifier).state = index;
              if (index == 0) {
                ref.read(bottomNavIndexProvider.notifier).state = 0;
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: EdgeInsets.only(right: 12.w),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.white.withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(16.r),
                border: isSelected
                    ? Border.all(color: AppColors.white, width: 1.5)
                    : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // FIXED: Use Text for emoji strings instead of Icon widget
                  Text(
                    category['icon'] as String,
                    style: TextStyle(fontSize: 22.sp),
                  ),
                  SizedBox(height: 4.h),
                  // FIXED: Changed 'label' to 'title' to match your map key
                  Text(
                    category['title'] as String,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.w500,
                      color: AppColors.white,
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