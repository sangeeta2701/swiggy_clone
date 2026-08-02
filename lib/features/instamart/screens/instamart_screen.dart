import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_clone/features/instamart/providers/instamart_providers.dart';
import 'package:swiggy_clone/features/instamart/screens/instamart_categories_screen.dart';
import 'package:swiggy_clone/features/instamart/screens/instamart_home_content.dart';

class InstamartScreen extends ConsumerWidget {
  const InstamartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch current sub-tab selected in InstamartBottomNav
    final selectedIndex = ref.watch(instamartBottomNavIndexProvider);

    switch (selectedIndex) {
      case 0:
        return const InstamartHomeContent();
      case 1:
        return const InstamartCategoriesScreen();
      case 2:
        return const Center(
          child: Text(
            "Reorder Screen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      case 3:
        return const Center(
          child: Text(
            "Print Screen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      default:
        return const InstamartHomeContent();
    }
  }
}