import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';
import 'package:swiggy_clone/features/home/screen/home_screen.dart';
import 'package:swiggy_clone/features/home/widgets/custom_bottom_nav.dart';
import 'package:swiggy_clone/features/home/widgets/home_location_header.dart';
import 'package:swiggy_clone/features/home/widgets/top_services_bar.dart';
import 'package:swiggy_clone/features/instamart/providers/instamart_providers.dart';
import 'package:swiggy_clone/features/instamart/screens/instamart_screen.dart';
import 'package:swiggy_clone/features/instamart/widgets/instamart_bottom_nav.dart';

class MainContainerScreen extends ConsumerWidget {
  const MainContainerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topCategoryIndex = ref.watch(selectedCategoryIndexProvider);
    final bottomIndex = ref.watch(bottomNavIndexProvider);
    
    // Watch current internal Instamart tab selection
    final instamartSubIndex = ref.watch(instamartBottomNavIndexProvider);

    // Determines active screen based on bottom nav and top services bar selections
    Widget getBodyScreen() {
      if (bottomIndex == 0) {
        switch (topCategoryIndex) {
          case 0:
            return const HomeScreen(); // Food Feed
          case 1:
            return const InstamartScreen(); // Instamart Screen
          case 2:
            return const Center(child: Text("Dineout Screen"));
          case 3:
            return const Center(child: Text("Giftables Screen"));
          case 4:
            return const Center(child: Text("Scenes Screen"));
          default:
            return const HomeScreen();
        }
      }

      switch (bottomIndex) {
        case 1:
          return const Center(child: Text("Bolt (15 Mins) Screen"));
        case 2:
          return const Center(child: Text("99 Store Screen"));
        case 3:
          return const Center(child: Text("EatRight Screen"));
        case 4:
          return const Center(child: Text("Reorder Screen"));
        default:
          return const HomeScreen();
      }
    }

    // Check if user is currently inside Instamart
    final isInstamartMode = (bottomIndex == 0 && topCategoryIndex == 1);

    // Header should only show if NOT in Instamart mode OR if on Instamart Home (subIndex == 0)
    final showTopHeader = !isInstamartMode || (instamartSubIndex == 0);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            // Top Purple Header renders conditionally
            if (showTopHeader)
              Container(
                color: AppColors.homePurple,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Column(
                    children: [
                      const HomeLocationHeader(),
                      height16,
                      const TopServicesBar(),
                      height12,
                    ],
                  ),
                ),
              ),

            // Dynamic Body Content Routing
            Expanded(
              child: getBodyScreen(),
            ),
          ],
        ),
      ),

      // Dynamic Bottom Bar Switcher
      bottomNavigationBar: isInstamartMode
          ? const InstamartBottomNav()
          : const CustomBottomNav(),
    );
  }
}