import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/providers/home_providers.dart';


class RestaurantHorizontalList extends ConsumerWidget {
  const RestaurantHorizontalList({super.key});

  final List<Map<String, dynamic>> reorderItems = const [
    {
      'name': 'Haldiram\'s Sweets',
      'offer': 'ITEMS AT ₹69',
      'rating': '4.5',
      'time': '45-50 mins',
      'cuisine': 'Sweets',
      'imageUrl': 'https://images.unsplash.com/photo-1599488615731-7e5c2823ff28?w=500',
    },
    {
      'name': 'Bakingo',
      'offer': 'ITEMS AT ₹69',
      'rating': '4.6',
      'time': '30-35 mins',
      'cuisine': 'Bakery',
      'imageUrl': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500',
    },
    {
      'name': 'ITC Aashirvaad',
      'offer': '67% OFF UPTO ₹120',
      'rating': '4.4',
      'time': '30-40 mins',
      'cuisine': 'Indian',
      'imageUrl': 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500',
    },
  ];

  final List<Map<String, dynamic>> fastItems = const [
    {
      'name': 'Manjushree Veg',
      'offer': 'ITEMS AT ₹69',
      'rating': '4.5',
      'time': '10-15 mins',
      'cuisine': 'Chinese',
      'imageUrl': 'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=500',
    },
    {
      'name': 'Faasos - Wraps',
      'offer': 'BUY1 GET1',
      'rating': '4.1',
      'time': '10-15 mins',
      'cuisine': 'Wraps',
      'imageUrl': 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=500',
    },
    {
      'name': 'Burritos By Pronto',
      'offer': 'ITEMS AT ₹69',
      'rating': '4.5',
      'time': '10-15 mins',
      'cuisine': 'Salads',
      'imageUrl': 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=500',
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(topPillTabProvider);
    final currentList = activeTab == 0 ? reorderItems : fastItems;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Toggle Pill Tabs
        Container(
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            color: AppColors.backgroundGrey,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => ref.read(topPillTabProvider.notifier).state = 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: activeTab == 0 ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        'TOP RATED',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: activeTab == 0 ? AppColors.successGreen : AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => ref.read(topPillTabProvider.notifier).state = 1,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: activeTab == 1 ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        'FOOD IN 15 MINS',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: activeTab == 1 ? AppColors.successGreen : AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        height16,

        // 2. Horizontal Restaurant List
        SizedBox(
          height: 185.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: currentList.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final res = currentList[index];
              return Padding(
                padding:  EdgeInsets.only(right:  8.0.w),
                child: SizedBox(
                  width: 125.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Card Image Stack
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Container(
                              height: 115.h,
                              width: 125.w,
                              color: AppColors.borderGrey.withOpacity(0.3),
                              child: Image.network(
                                res['imageUrl']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Dark Gradient Overlay
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.75),
                                  ],
                                  stops: const [0.4, 1.0],
                                ),
                              ),
                            ),
                          ),
                          // Favorite Icon
                          Positioned(
                            right: 8.w,
                            top: 8.h,
                            child: Icon(
                              Icons.favorite_border,
                              color: AppColors.white,
                              size: 18.sp,
                            ),
                          ),
                          // Offer Text
                          Positioned(
                            bottom: 8.h,
                            left: 8.w,
                            child: Text(
                              res['offer']!,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w900,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      height8,
                
                      // Title
                      Text(
                        res['name']!,
                        style: AppTextStyles.restaurantTitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      height4,
                
                      // Rating & Delivery Time
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2.r),
                            decoration: const BoxDecoration(
                              color: AppColors.successGreen,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.star,
                              color: AppColors.white,
                              size: 10.sp,
                            ),
                          ),
                          width4,
                          Expanded(
                            child: Text(
                              "${res['rating']} • ${res['time']}",
                              style: AppTextStyles.caption.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                
                      // Cuisine
                      Text(
                        res['cuisine']!,
                        style: AppTextStyles.caption,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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