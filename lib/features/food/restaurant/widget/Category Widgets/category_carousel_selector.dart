import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class CategoryCarouselSelector extends StatelessWidget {
  final List<Map<String, String>> categoriesList;
  final String activeCategory;
  final ValueChanged<String> onCategorySelected;

  const CategoryCarouselSelector({
    super.key,
    required this.categoriesList,
    required this.activeCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        separatorBuilder: (_, __) => width16,
        itemBuilder: (context, index) {
          final cat = categoriesList[index];
          final String title = cat['title'] ?? '';
          final bool isSelected = title.toLowerCase() == activeCategory.toLowerCase();

          return GestureDetector(
            onTap: () => onCategorySelected(title),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 58.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? AppColors.primaryOrange : Colors.transparent,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(cat['image'] ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (isSelected)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 8.r,
                          backgroundColor: AppColors.primaryOrange,
                          child: Icon(Icons.check, size: 10.sp, color: AppColors.white),
                        ),
                      ),
                  ],
                ),
                height4,
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: isSelected ? AppColors.primaryOrange : AppColors.textPrimary,
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