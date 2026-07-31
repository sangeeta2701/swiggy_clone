import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class InstamartGridSection extends StatelessWidget {
  final String sectionTitle;
  final List<Map<String, String>> items;

  const InstamartGridSection({
    super.key,
    required this.sectionTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            sectionTitle,
            style: AppTextStyles.instamartSectionHeader,
          ),
        ),
        height12,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 14.h,
            childAspectRatio: 0.68,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            final String imageUrl = item['image'] ?? '';
            final String itemName = item['name'] ?? '';

            // ALWAYS RETURN A VALID WIDGET
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 72.h,
                  width: double.infinity,
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.headerBackground,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: imageUrl.isNotEmpty
                        ? Image.network(
                            imageUrl,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.shopping_bag_outlined,
                                color: AppColors.textHint,
                                size: 28.sp,
                              );
                            },
                          )
                        : Icon(
                            Icons.shopping_bag_outlined,
                            color: AppColors.textHint,
                            size: 28.sp,
                          ),
                  ),
                ),
                height8,
                SizedBox(
                  height: 32.h,
                  child: Text(
                    itemName,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.instamartItemTitle,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}