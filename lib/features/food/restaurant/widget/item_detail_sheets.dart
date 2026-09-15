import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import '../models/restaurant_menu_model.dart';

class ItemDetailSheets {
  // 1. Show Product Quick View Sheet
  static void showItemDetail({
    required BuildContext context,
    required MenuItem item,
    required int currentQuantity,
    required Function(int count, double price) onAddToCart,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dismiss Button
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 12.h, bottom: 8.h),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(bottomSheetContext),
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.textPrimary,
                      child: Icon(Icons.close, color: AppColors.white, size: 18.sp),
                    ),
                  ),
                ),
              ),

              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                child: Image.network(
                  item.imageUrl,
                  height: 220.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Veg & Bestseller
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.r),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.vegGreen, width: 1.5),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Icon(Icons.circle, size: 8.sp, color: AppColors.vegGreen),
                        ),
                        if (item.isBestseller) ...[
                          width8,
                          Icon(Icons.star_rounded, size: 14.sp, color: AppColors.errorRed),
                          width4,
                          Text(
                            'Bestseller',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.errorRed,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ],
                    ),
                    height8,

                    // Name & Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name, style: AppTextStyles.screenTitle.copyWith(fontSize: 18.sp)),
                              height4,
                              Text('₹${item.price.toInt()}', style: AppTextStyles.restaurantTitle),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 38.h,
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       Navigator.pop(bottomSheetContext);
                        //       if (item.isCustomisable && item.options != null && item.options!.isNotEmpty) {
                        //         showCustomisationSheet(
                        //           context: context,
                        //           item: item,
                        //           onAddToCart: onAddToCart,
                        //         );
                        //       } else {
                        //         onAddToCart(1, item.price);
                        //       }
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //       backgroundColor: AppColors.white,
                        //       side: const BorderSide(color: AppColors.borderGrey),
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8.r),
                        //       ),
                        //       elevation: 2,
                        //     ),
                        //     child: Text(
                        //       'ADD',
                        //       style: AppTextStyles.buttonText.copyWith(
                        //         fontSize: 14.sp,
                        //         color: AppColors.successGreen,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        child: ElevatedButton(
  onPressed: () {
    Navigator.pop(bottomSheetContext);
    final bool canCustomise = item.isCustomisable == true &&
        item.options != null &&
        item.options!.isNotEmpty;

    if (canCustomise) {
      showCustomisationSheet(
        context: context,
        item: item,
        onAddToCart: onAddToCart,
      );
    } else {
      // Passes 1 if cart is empty, or preserves quantity step
      final int addQuantity = currentQuantity > 0 ? currentQuantity : 1;
      onAddToCart(addQuantity, item.price);
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.white,
    side: const BorderSide(color: AppColors.borderGrey),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    elevation: 2,
  ),
  child: Text(
    'ADD',
    style: AppTextStyles.buttonText.copyWith(
      fontSize: 14.sp,
      color: AppColors.successGreen,
    ),
  ),
),),
                      ],
                    ),

                    if (item.isCustomisable) ...[
                      height2,
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Customisable',
                          style: AppTextStyles.caption.copyWith(fontSize: 10.sp),
                        ),
                      ),
                    ],

                    height8,
                    Row(
                      children: [
                        Icon(Icons.star, size: 12.sp, color: AppColors.successGreen),
                        width4,
                        Text(
                          '${item.rating} (${item.ratingCount})',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.successGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height12,
                    Text(
                      item.description,
                      style: AppTextStyles.subtitle.copyWith(height: 1.4),
                    ),
                    height20,
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // 2. Show Options Customisation Sheet
  static void showCustomisationSheet({
    required BuildContext context,
    required MenuItem item,
    required Function(int count, double price) onAddToCart,
  }) {
    int selectedOptionIndex = 0;
    int quantity = 1;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final selectedOption = item.options![selectedOptionIndex];
            final double totalPrice = selectedOption.price * quantity;

            return Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.network(
                            item.imageUrl,
                            width: 44.r,
                            height: 44.r,
                            fit: BoxFit.cover,
                          ),
                        ),
                        width12,
                        Text(
                          item.name,
                          style: AppTextStyles.restaurantTitle.copyWith(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),

                  // Preset Banner
                  Container(
                    width: double.infinity,
                    color: AppColors.instamartLightBlue.withOpacity(0.5),
                    padding: EdgeInsets.all(12.r),
                    child: Row(
                      children: [
                        Icon(Icons.face_retouching_natural, color: AppColors.primaryOrange, size: 28.sp),
                        width12,
                        Expanded(
                          child: Text(
                            'Hi, we\'ve preselected some popular choices to help you place the order faster!',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.homePurple,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Quantity', style: AppTextStyles.restaurantTitle),
                        height2,
                        Text('Select any 1', style: AppTextStyles.caption),
                        height12,

                        // Options Card List
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderGrey),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: item.options!.length,
                            separatorBuilder: (_, __) => const Divider(height: 1, color: AppColors.dividerGrey),
                            itemBuilder: (context, index) {
                              final option = item.options![index];
                              final bool isSelected = selectedOptionIndex == index;

                              return InkWell(
                                onTap: () => setSheetState(() => selectedOptionIndex = index),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.r),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.vegGreen, width: 1.5),
                                          borderRadius: BorderRadius.circular(4.r),
                                        ),
                                        child: Icon(Icons.circle, size: 8.sp, color: AppColors.vegGreen),
                                      ),
                                      width12,
                                      Text(option.title, style: AppTextStyles.listTileTitle.copyWith(fontSize: 14.sp)),
                                      const Spacer(),
                                      Text('₹${option.price.toInt()}', style: AppTextStyles.restaurantTitle.copyWith(fontSize: 13.sp)),
                                      width12,
                                      Icon(
                                        isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                                        color: isSelected ? AppColors.primaryOrange : AppColors.textHint,
                                        size: 20.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Bottom Stepper & Action Bar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      border: Border(top: BorderSide(color: AppColors.dividerGrey)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderGrey),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, size: 16.sp, color: AppColors.successGreen),
                                onPressed: quantity > 1 ? () => setSheetState(() => quantity--) : null,
                              ),
                              Text('$quantity', style: AppTextStyles.restaurantTitle),
                              IconButton(
                                icon: Icon(Icons.add, size: 16.sp, color: AppColors.successGreen),
                                onPressed: () => setSheetState(() => quantity++),
                              ),
                            ],
                          ),
                        ),
                        width16,
                        Expanded(
                          child: SizedBox(
                            height: 46.h,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(bottomSheetContext);
                                onAddToCart(quantity, totalPrice);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.successGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'Add Item | ₹${totalPrice.toInt()}',
                                style: AppTextStyles.buttonText.copyWith(fontSize: 15.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}