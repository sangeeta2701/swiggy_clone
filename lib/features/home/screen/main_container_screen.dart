import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';
import 'package:swiggy_clone/features/home/screen/home_screen.dart';
import 'package:swiggy_clone/features/home/widgets/custom_bottom_nav.dart';
import 'package:swiggy_clone/features/instamart/screens/instamart_screen.dart';

class MainContainerScreen extends ConsumerWidget {
  const MainContainerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomIndex = ref.watch(bottomNavIndexProvider);
    final topCategoryIndex = ref.watch(selectedCategoryIndexProvider);

    // Check if Instamart is selected from top categories or bottom nav
    final isInstamartSelected = (bottomIndex == 0 && topCategoryIndex == 1);

    Widget getBody() {
      if (isInstamartSelected) {
        return const InstamartScreen();
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

    return Scaffold(
      body: getBody(),
      // HIDE main bottom nav when on Instamart screen
      bottomNavigationBar: isInstamartSelected ? null : const CustomBottomNav(),
    );
  }
}