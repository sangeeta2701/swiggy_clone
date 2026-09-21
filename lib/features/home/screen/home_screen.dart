

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';
import 'package:swiggy_clone/features/home/widgets/home_category_tab_bar.dart';
import 'package:swiggy_clone/features/home/widgets/home_search_bar.dart';
import 'package:swiggy_clone/features/home/widgets/jain_vegan_section.dart';
import 'package:swiggy_clone/features/home/widgets/offer_promos_scroll.dart';
import 'package:swiggy_clone/features/home/widgets/restaurant_horizontal_list.dart';
import 'package:swiggy_clone/features/home/widgets/store_99_view.dart';
import 'package:swiggy_clone/features/home/widgets/whats_on_your_mind.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilterIndex = ref.watch(homeCategoryFilterProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Purple Header
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10.h,
                left: 16.w,
                right: 16.w,
                bottom: 16.h,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.homePurple, AppColors.homePurpleDark],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r),
                ),
              ),
              child: Column(
                children: [
                  height12,
                  const HomeSearchBar(),
                  height16,

                  // Category Navigation Tab Bar (All, 99 Store, Offers, etc.)
                  const HomeCategoryTabBar(),

                  if (activeFilterIndex == 0) ...[
                    height16,
                    const OfferPromosScroll(),
                  ],
                ],
              ),
            ),
            height20,

            // Lower Dynamic Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: activeFilterIndex == 1
                  ? const Store99View() // 99 Store tab content
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // All Tab Default Content
                        const RestaurantHorizontalList(),
                        height24,
                        const WhatsOnYourMindSection(),
                        height24,
                        const JainVeganSection(),
                      ],
                    ),
            ),
            height30,
          ],
        ),
      ),
    );
  }
}