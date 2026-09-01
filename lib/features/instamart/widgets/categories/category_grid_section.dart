import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class CategoryGridSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> items;
  final Function(String sectionTitle, Map<String, String> item)? onItemTap;

  const CategoryGridSection({
    super.key,
    required this.title,
    required this.items,
    this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(title, style: AppTextStyles.instamartSectionHeader),
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
          itemBuilder: (context, index) {
            final item = items[index];
            final imageUrl = item['image'] ?? '';

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (onItemTap != null) {
                  onItemTap!(title, item);
                }
              },
              child: Column(
                children: [
                  Container(
                    height: 72.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    padding: EdgeInsets.all(8.r),
                    child: imageUrl.isNotEmpty
                        ? CachedNetworkImage(
                            imageUrl: imageUrl,
                            fit: BoxFit.contain,
                            httpHeaders: const {
                              'User-Agent':
                                  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
                              'Accept':
                                  'image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8',
                            },
                            placeholder: (context, url) => Center(
                              child: SizedBox(
                                width: 16.w,
                                height: 16.h,
                                child: CircularProgressIndicator(
                                  strokeWidth: 1.8,
                                  color: AppColors.instamartBlue,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.shopping_bag_outlined,
                              color: AppColors.textHint,
                              size: 28.sp,
                            ),
                          )
                        : Icon(
                            Icons.shopping_bag_outlined,
                            color: AppColors.textHint,
                            size: 28.sp,
                          ),
                  ),
                  height8,
                  SizedBox(
                    height: 32.h,
                    child: Text(
                      item['name'] ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.instamartItemTitle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}