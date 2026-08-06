import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';

class CategorySidebar extends StatelessWidget {
  final List<CategoryModel> categories;
  final String activeCategory;
  final ValueChanged<String> onSelectCategory;

  const CategorySidebar({
    super.key,
    required this.categories,
    required this.activeCategory,
    required this.onSelectCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.w,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        itemCount: categories.length,
        separatorBuilder: (_, __) => height16,
        itemBuilder: (context, index) {
          final sub = categories[index];
          final isSelected = activeCategory == sub.name;

          return GestureDetector(
            onTap: () => onSelectCategory(sub.name),
            child: Column(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 62.h,
                  width: 62.w,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.instamartLightBlue
                        : AppColors.backgroundGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16.r),
                    border: isSelected
                        ? Border.all(
                            color: AppColors.instamartBlue,
                            width: 1.8,
                          )
                        : null,
                  ),
                  padding: EdgeInsets.all(6.r),
                  child: Image.network(
                    sub.image,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.fastfood_outlined,
                      color: AppColors.textHint,
                      size: 24.sp,
                    ),
                  ),
                ),
                height4,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(
                    sub.name,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight:
                          isSelected ? FontWeight.w700 : FontWeight.w500,
                      color: isSelected
                          ? AppColors.textPrimary
                          : AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}