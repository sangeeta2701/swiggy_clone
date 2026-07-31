import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/features/instamart/providers/instamart_providers.dart';

class InstamartBottomNav extends ConsumerWidget {
  const InstamartBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(instamartBottomNavIndexProvider);

    final navItems = [
      {'label': 'Instamart', 'icon': Icons.shopping_basket},
      {'label': 'Categories', 'icon': Icons.grid_view},
      {'label': 'Reorder', 'icon': Icons.history},
      {'label': 'Print', 'icon': Icons.print_outlined},
    ];

    return SafeArea(
      top: false,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(top: BorderSide(color: AppColors.dividerGrey, width: 0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navItems.length, (index) {
            final isSelected = selectedIndex == index;
            final color = isSelected ? AppColors.textPrimary : AppColors.textSecondary;

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => ref.read(instamartBottomNavIndexProvider.notifier).state = index,
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