import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/screen/store_99_view.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';
import 'package:swiggy_clone/features/home/widgets/home_category_tab_bar.dart';
import 'package:swiggy_clone/features/home/widgets/home_location_header.dart';
import 'package:swiggy_clone/features/home/widgets/home_search_bar.dart';
import 'package:swiggy_clone/features/home/widgets/jain_vegan_section.dart';
import 'package:swiggy_clone/features/home/widgets/offer_promos_scroll.dart';
import 'package:swiggy_clone/features/home/widgets/restaurant_horizontal_list.dart';
import 'package:swiggy_clone/features/home/widgets/sticky_tab_bar_delegate.dart';
import 'package:swiggy_clone/features/home/widgets/top_services_bar.dart';
import 'package:swiggy_clone/features/home/widgets/whats_on_your_mind.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilterIndex = ref.watch(homeCategoryFilterProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          // Unpinned Header Content (Location + Top Services + Search Bar + Promos)
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.homePurple,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 12.h,
              ),
              child: Column(
                children: [
                  const HomeLocationHeader(),
                  height12,
                  const TopServicesBar(),
                  height12,
                  const HomeSearchBar(),
                  if (activeFilterIndex == 0) ...[
                    height16,
                    const OfferPromosScroll(),
                  ],
                ],
              ),
            ),
          ),

          //  Sticky Category Tab Bar (Pins below status bar when scrolled up)
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              height: 56.h,
              backgroundColor: AppColors.homePurple,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
                child: const HomeCategoryTabBar(),
              ),
            ),
          ),

          //  Scrollable Main Feed / 99 Store View
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            sliver: SliverToBoxAdapter(
              child: activeFilterIndex == 1
                  ? const Store99View()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RestaurantHorizontalList(),
                        height24,
                        const WhatsOnYourMindSection(),
                        height24,
                        const JainVeganSection(),
                        height30,
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}