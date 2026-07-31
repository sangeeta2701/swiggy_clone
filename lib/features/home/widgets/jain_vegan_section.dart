import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/provider/home_providers.dart';


class JainVeganSection extends ConsumerWidget {
  const JainVeganSection({super.key});

  final List<Map<String, String>> jainItems = const [
    {
      'name': 'Jain Special Thali',
      'offer': 'ITEMS AT ₹69',
      'imageUrl': 'https://images.unsplash.com/photo-1610192244261-3f33de3f55e4?w=500',
    },
    {
      'name': 'Kesar Badam Kheer',
      'offer': 'ITEMS AT ₹89',
      'imageUrl': 'https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?w=500',
    },
    {
      'name': 'Jain Vada Pav',
      'offer': 'ITEMS AT ₹49',
      'imageUrl': 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500',
    },
  ];

  final List<Map<String, String>> veganItems = const [
    {
      'name': 'Vegan Protein Bowl',
      'offer': 'ITEMS AT ₹79',
      'imageUrl': 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500',
    },
    {
      'name': 'Oat Smoothie',
      'offer': 'FLAT 50% OFF',
      'imageUrl': 'https://images.unsplash.com/photo-1553530666-ba11a7da3888?w=500',
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(dietaryTabProvider);
    final currentList = activeTab == 0 ? jainItems : veganItems;

    return Column(
      children: [
        // 1. Dual Toggle Pill Container
        Container(
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            color: AppColors.backgroundGrey,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            children: [
              // Jain Toggle Button
              Expanded(
                child: GestureDetector(
                  onTap: () => ref.read(dietaryTabProvider.notifier).state = 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                      color: activeTab == 0 ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.eco_outlined,
                          size: 18.sp,
                          color: activeTab == 0 ? AppColors.successGreen : AppColors.textSecondary,
                        ),
                        width8,
                        Text(
                          'Explore JAIN FOOD',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: activeTab == 0 ? AppColors.successGreen : AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Vegan Toggle Button
              Expanded(
                child: GestureDetector(
                  onTap: () => ref.read(dietaryTabProvider.notifier).state = 1,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                      color: activeTab == 1 ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_florist_outlined,
                          size: 18.sp,
                          color: activeTab == 1 ? AppColors.successGreen : AppColors.textSecondary,
                        ),
                        width8,
                        Text(
                          'Explore VEGAN FOOD',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: activeTab == 1 ? AppColors.successGreen : AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        height16,

        // 2. Filtered Food Horizontal List
        SizedBox(
          height: 155.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: currentList.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final item = currentList[index];
              return Padding(
                padding:  EdgeInsets.only(right:  8.0.w),
                child: SizedBox(
                  width: 120.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Container(
                              height: 110.h,
                              width: 120.w,
                              color: AppColors.borderGrey.withOpacity(0.3),
                              child: Image.network(
                                item['imageUrl']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                  stops: const [0.5, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 6.w,
                            top: 6.h,
                            child: Icon(
                              Icons.favorite_border,
                              color: AppColors.white,
                              size: 18.sp,
                            ),
                          ),
                          Positioned(
                            bottom: 6.h,
                            left: 6.w,
                            child: Text(
                              item['offer']!,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      height8,
                      Text(
                        item['name']!,
                        style: AppTextStyles.restaurantTitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}