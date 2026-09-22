import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/provider/store_99_filter_provider.dart';

void showVegFilterSheet(
    BuildContext context,
    Store99FilterNotifier notifier,
    Store99FilterState state,
  ) {
    VegPreference tempPref = state.vegPref;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (ctx) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Veg/Non-Veg', style: AppTextStyles.sectionHeader),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(ctx),
                      ),
                    ],
                  ),
                  RadioListTile<VegPreference>(
                    title: const Text('Veg'),
                    value: VegPreference.veg,
                    groupValue: tempPref,
                    onChanged: (val) => setSheetState(() => tempPref = val!),
                  ),
                  RadioListTile<VegPreference>(
                    title: const Text('Non Veg'),
                    value: VegPreference.nonVeg,
                    groupValue: tempPref,
                    onChanged: (val) => setSheetState(() => tempPref = val!),
                  ),
                  height20,
                  SizedBox(
                    width: double.infinity,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {
                        notifier.setVegPref(tempPref);
                        Navigator.pop(ctx);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text('Apply', style: AppTextStyles.buttonText),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        notifier.setVegPref(VegPreference.none);
                        Navigator.pop(ctx);
                      },
                      child: Text(
                        'Clear Filters',
                        style: TextStyle(
                            color: AppColors.textSecondary, fontSize: 12.sp),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }