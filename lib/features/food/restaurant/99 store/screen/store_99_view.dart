import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Cuisines_Carousel.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Empty_Filter_State.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Filter_Chips_Bar.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Hero_Banner.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Horizontal_Deals_Section.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Product_Grid.dart';
import '../data/store_99_mock_data.dart';
import '../provider/store_99_filter_provider.dart';

class Store99View extends ConsumerWidget {
  const Store99View({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterState = ref.watch(store99FilterProvider);
    final filterNotifier = ref.read(store99FilterProvider.notifier);

    // Apply filters dynamically
    final filteredItems = Store99MockData.allItems.where((item) {
      // 1. Price Filter
      if (filterState.priceRange == PriceFilterRange.under99 && item.discountedPrice > 99) {
        return false;
      }
      if (filterState.priceRange == PriceFilterRange.range100To149 &&
          (item.discountedPrice < 100 || item.discountedPrice > 149)) {
        return false;
      }

      // 2. Veg / Non-Veg Filter
      if (filterState.vegPref == VegPreference.veg && !item.isVeg) {
        return false;
      }
      if (filterState.vegPref == VegPreference.nonVeg && item.isVeg) {
        return false;
      }

      // 3. Category Filter
      if (filterState.selectedCategory != 'All' &&
          item.cuisineCategory.toLowerCase() != filterState.selectedCategory.toLowerCase()) {
        return false;
      }

      // 4. Delivery Time Filter
      if (filterState.maxTime == MaxDeliveryTime.min20 && item.deliveryTime.contains('30')) {
        return false;
      }

      return true;
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top Hero Banner (Only shown when NO active filter applied)
        if (!filterState.hasAnyFilter) ...[
          buildHeroBanner(),
          height20,
        ],

        // 1. Popular Cuisines Carousel Row
        Store99CuisinesCarousel(state: filterState, notifier: filterNotifier),
        height16,

        // 2. Horizontal Filter Chips Control Bar
        buildFilterChipsBar(context, ref, filterState, filterNotifier),
        height16,

        // 3. Unfiltered vs Filtered Content Switching
        if (!filterState.hasAnyFilter) ...[
          // Top Chinese Deals Horizontal Section
          Text('Top Chinese Deals', style: AppTextStyles.sectionHeader),
          height12,
          buildHorizontalDealsSection(),
          height20,

          Text('Trending dishes near you', style: AppTextStyles.sectionHeader),
          height12,
        ] else ...[
          // Items Counter Header
          Text(
            'All ${filteredItems.length * 52} Items',
            style: AppTextStyles.sectionHeader.copyWith(fontSize: 16.sp),
          ),
          height12,
        ],

        // 4. Product Items 2-Column Grid
        if (filteredItems.isEmpty)
          buildEmptyFilterState(filterNotifier)
        else
          buildProductGrid(filteredItems),

        height30,
      ],
    );
  }

 

 

 

 
  
}