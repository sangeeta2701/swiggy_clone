import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';
import 'package:swiggy_clone/features/home/screen/home_screen.dart';
import 'package:swiggy_clone/features/home/widgets/custom_bottom_nav.dart';

class MainContainerScreen extends ConsumerWidget {
  const MainContainerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomIndex = ref.watch(bottomNavIndexProvider);
    final topCategoryIndex = ref.watch(selectedCategoryIndexProvider);

    Widget getBody() {
      //If bottom navigation is set to "Food" (index 0)
      if (bottomIndex == 0) {
        switch (topCategoryIndex) {
          case 0:
            return const HomeScreen(); // Your Main Food Feed
          case 1:
            return const Center(child: Text("Instamart Category Screen"));
          case 2:
            return const Center(child: Text("Dineout Category Screen"));
          case 3:
            return const Center(child: Text("Giftables Category Screen"));
          default:
            return const HomeScreen();
        }
      }

      // Otherwise switch based on bottom nav bar options
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
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}