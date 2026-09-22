import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/provider/store_99_filter_provider.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_chip.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/show_Delivery_Time_Sheet.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/show_Veg_Filter_Sheet.dart';

Widget buildFilterChipsBar(
    BuildContext context,
    WidgetRef ref,
    Store99FilterState state,
    Store99FilterNotifier notifier,
  ) {
    final bool isUnder99 = state.priceRange == PriceFilterRange.under99;
    final bool isRange100 = state.priceRange == PriceFilterRange.range100To149;
    final bool isVegSelected = state.vegPref != VegPreference.none;
    final bool isTimeSelected = state.maxTime != MaxDeliveryTime.none;

    // Define all available filter chips
    final List<Map<String, dynamic>> allChips = [
      {
        'id': 'under99',
        'label': '₹99 & under',
        'isSelected': isUnder99,
        'onTap': notifier.toggleUnder99,
        'onClear': isUnder99 ? notifier.toggleUnder99 : null,
        'badgeNumber': null,
        'hasDropdown': false,
      },
      {
        'id': 'range100',
        'label': '₹100 - ₹149',
        'isSelected': isRange100,
        'onTap': notifier.toggleRange100To149,
        'onClear': isRange100 ? notifier.toggleRange100To149 : null,
        'badgeNumber': null,
        'hasDropdown': false,
      },
      {
        'id': 'vegPref',
        'label': 'Veg/Non-Veg',
        'isSelected': isVegSelected,
        'onTap': () => showVegFilterSheet(context, notifier, state),
        'onClear': isVegSelected
            ? () => notifier.setVegPref(VegPreference.none)
            : null,
        'badgeNumber': isVegSelected ? 1 : null,
        'hasDropdown': true,
      },
      {
        'id': 'deliveryTime',
        'label': 'Delivery time',
        'isSelected': isTimeSelected,
        'onTap': () => showDeliveryTimeSheet(context, notifier, state),
        'onClear': isTimeSelected
            ? () => notifier.setDeliveryTime(MaxDeliveryTime.none)
            : null,
        'badgeNumber': isTimeSelected ? 1 : null,
        'hasDropdown': true,
      },
    ];

    // Sort chips so selected ones always come first
    final List<Map<String, dynamic>> sortedChips = [
      ...allChips.where((c) => c['isSelected'] == true),
      ...allChips.where((c) => c['isSelected'] == false),
    ];

    return SizedBox(
      height: 36.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sortedChips.length,
        separatorBuilder: (_, __) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final chip = sortedChips[index];
          return buildChip(
            label: chip['label'] as String,
            isSelected: chip['isSelected'] as bool,
            onTap: chip['onTap'] as VoidCallback?,
            onClear: chip['onClear'] as VoidCallback?,
            badgeNumber: chip['badgeNumber'] as int?,
            hasDropdown: chip['hasDropdown'] as bool,
          );
        },
      ),
    );
  }