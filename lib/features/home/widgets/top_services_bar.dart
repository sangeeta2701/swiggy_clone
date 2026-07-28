import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';

class TopServicesBar extends ConsumerWidget {
  const TopServicesBar({super.key});

  final List<Map<String, String>> categories = const [
    {'title': 'Food', 'icon': '🍔'},
    {'title': 'Instamart', 'icon': '🛒', 'badge': '12 mins'},
    {'title': 'Dineout', 'icon': '🍽️'},
    {'title': 'Giftables', 'icon': '🎁'},
    {'title': 'Scenes', 'icon': '🪩'},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIdx = ref.watch(selectedCategoryIndexProvider);

    return SizedBox(
      height: 72.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => width8,
        itemBuilder: (context, index) {
          final isSelected = selectedIdx == index;
          final category = categories[index];

          return GestureDetector(
            onTap: () =>
                ref.read(selectedCategoryIndexProvider.notifier).state = index,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.homePurpleTabSelected
                    : AppColors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.r),
                border: isSelected
                    ? Border.all(color: AppColors.primaryOrangeLight, width: 1)
                    : null,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (category.containsKey('badge'))
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                        vertical: 1.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        category['badge']!,
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Text(category['icon']!, style: TextStyle(fontSize: 20.sp)),
                  height4,
                  Text(category['title']!, style: AppTextStyles.categoryTab),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}