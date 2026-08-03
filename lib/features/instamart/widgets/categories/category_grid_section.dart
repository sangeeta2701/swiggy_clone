import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class CategoryGridSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> items;

  const CategoryGridSection({
    super.key,
    required this.title,
    required this.items,
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
            return Column(
              children: [
                
                Container(
                  height: 72.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xF2F5F8,
                    ), 
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  padding: EdgeInsets.all(
                    8.r,
                  ), 
                  child: Image.network(
                    item['image'] ?? '',
                    fit: BoxFit.contain, 
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.grey[400],
                      size: 28.sp,
                    ),
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
            );
          },
        ),
      ],
    );
  }
}
