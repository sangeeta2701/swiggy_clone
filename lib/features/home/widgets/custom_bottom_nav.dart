import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';


class CustomBottomNav extends ConsumerWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) =>
          ref.read(bottomNavIndexProvider.notifier).state = index,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryOrange,
      unselectedItemColor: AppColors.textSecondary,
      selectedLabelStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontSize: 10.sp),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant),
          label: 'Food',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.electric_bolt),
          label: 'Bolt',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: '99 store',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'EatRight',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Reorder',
        ),
      ],
    );
  }
}