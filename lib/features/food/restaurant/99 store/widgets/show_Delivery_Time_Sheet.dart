import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/provider/store_99_filter_provider.dart';

void showDeliveryTimeSheet(
    BuildContext context,
    Store99FilterNotifier notifier,
    Store99FilterState state,
  ) {
    MaxDeliveryTime tempTime = state.maxTime;

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
                      Text('Delivery time', style: AppTextStyles.sectionHeader),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(ctx),
                      ),
                    ],
                  ),
                  RadioListTile<MaxDeliveryTime>(
                    title: const Text('less than 20 minutes'),
                    value: MaxDeliveryTime.min20,
                    groupValue: tempTime,
                    onChanged: (val) => setSheetState(() => tempTime = val!),
                  ),
                  RadioListTile<MaxDeliveryTime>(
                    title: const Text('less than 30 minutes'),
                    value: MaxDeliveryTime.min30,
                    groupValue: tempTime,
                    onChanged: (val) => setSheetState(() => tempTime = val!),
                  ),
                  RadioListTile<MaxDeliveryTime>(
                    title: const Text('less than 45 minutes'),
                    value: MaxDeliveryTime.min45,
                    groupValue: tempTime,
                    onChanged: (val) => setSheetState(() => tempTime = val!),
                  ),
                  height20,
                  SizedBox(
                    width: double.infinity,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {
                        notifier.setDeliveryTime(tempTime);
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
                        notifier.setDeliveryTime(MaxDeliveryTime.none);
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