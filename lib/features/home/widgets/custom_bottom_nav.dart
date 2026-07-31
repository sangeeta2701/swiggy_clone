
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomBottomNav extends ConsumerWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = ref.watch(bottomNavIndexProvider);

    final navItems = [
      {'label': 'Food', 'icon': Icons.lunch_dining},
      {'label': 'Bolt', 'icon': Icons.electric_bolt},
      {'label': '99 store', 'icon': Icons.storefront},
      {'label': 'EatRight', 'icon': Icons.favorite_outline},
      {'label': 'Reorder', 'icon': Icons.shopping_bag_outlined},
    ];

    return SafeArea(
      top: false,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navItems.length, (index) {
            final isSelected = bottomNavIndex == index;
            final color = isSelected ? AppColors.primaryOrange : AppColors.textSecondary;
      
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                ref.read(bottomNavIndexProvider.notifier).state = index;
                // If bottom Food is tapped, sync top category bar back to Food (Index 0)
                if (index == 0) {
                  ref.read(selectedCategoryIndexProvider.notifier).state = 0;
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    navItems[index]['icon'] as IconData,
                    color: color,
                    size: 22.sp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    navItems[index]['label'] as String,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: color,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}