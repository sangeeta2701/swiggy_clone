import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';

class HomeCategoryTabBar extends ConsumerWidget {
  const HomeCategoryTabBar({super.key});

  final List<Map<String, dynamic>> tabs = const [
    {'title': 'All', 'icon': Icons.grid_view_rounded},
    {'title': '99 Store', 'icon': Icons.storefront_rounded},
    {'title': 'Offers', 'icon': Icons.local_offer_rounded},
    {'title': 'Bolt', 'icon': Icons.bolt_rounded},
    {'title': 'EatRight', 'icon': Icons.health_and_safety_rounded},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(homeCategoryFilterProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(tabs.length, (index) {
          final tab = tabs[index];
          final isSelected = activeTab == index;

          return GestureDetector(
            onTap: () {
              ref.read(homeCategoryFilterProvider.notifier).state = index;
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              padding: EdgeInsets.only(bottom: 6.h),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected ? AppColors.white : Colors.transparent,
                    width: 3.w,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    tab['icon'] as IconData,
                    size: 22.sp,
                    color: isSelected ? AppColors.white : AppColors.white.withOpacity(0.7),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    tab['title'] as String,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                      color: isSelected ? AppColors.white : AppColors.white.withOpacity(0.7),
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