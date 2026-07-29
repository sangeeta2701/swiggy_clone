import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class RestaurantHorizontalList extends StatelessWidget {
  const RestaurantHorizontalList({super.key});

  final List<Map<String, String>> items = const [
    {
      'name': 'Bakingo',
      'offer': 'ITEMS AT ₹69',
      'imageUrl': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500', // Cake / Bakery
    },
    {
      'name': "Domino's Pizza",
      'offer': 'ITEMS AT ₹75',
      'imageUrl': 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500', // Pizza
    },
    {
      'name': 'Meghana Foods',
      'offer': 'ITEMS AT ₹120',
      'imageUrl': 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500', // Biryani
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Quick Toggle Pill Tabs
        Container(
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            color: AppColors.backgroundGrey,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'REORDER',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.successGreen,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'FOOD IN 15 MINS',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        height16,

        // Food Items Grid/Horizontal Cards
        SizedBox(
          height: 160.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final res = items[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  width: 120.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          // Restaurant Image with Rounded Corners
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Container(
                              height: 110.h,
                              width: 120.w,
                              color: AppColors.borderGrey.withOpacity(0.3),
                              child: Image.network(
                                res['imageUrl']!,
                                fit: BoxFit.cover,
                                loadingBuilder: (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: SizedBox(
                                      width: 20.w,
                                      height: 20.h,
                                      child: const CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: AppColors.borderGrey,
                                    child: Icon(
                                      Icons.fastfood,
                                      size: 30.sp,
                                      color: AppColors.white,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                
                          // Dark Gradient Overlay to make bottom offer text pop
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
                
                          // Favorite Icon
                          Positioned(
                            right: 6.w,
                            top: 6.h,
                            child: Icon(
                              Icons.favorite_border,
                              color: AppColors.white,
                              size: 18.sp,
                            ),
                          ),
                
                          // Offer Text
                          Positioned(
                            bottom: 6.h,
                            left: 6.w,
                            child: Text(
                              res['offer']!,
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
                        res['name']!,
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