import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';


class Store99View extends StatelessWidget {
  const Store99View({super.key});

  final List<Map<String, String>> cuisines = const [
    {'title': 'Tea', 'image': 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=300'},
    {'title': 'Bath', 'image': 'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=300'},
    {'title': 'Coffee', 'image': 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=300'},
    {'title': 'Sandwich', 'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300'},
    {'title': 'Biryani', 'image': 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=300'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. 99 Store Hero Blue Banner Card
        Container(
          height: 140.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            gradient: const LinearGradient(
              colors: [Color(0xFF0072FF), Color(0xFF00C6FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '99 store',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w900,
                        color: AppColors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    height4,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        'Meals at ₹99 + Free Delivery',
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0052FF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -10.w,
                bottom: -10.h,
                child: Image.network(
                  'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
                  width: 140.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

        height20,

        // 2. Popular Cuisines Row
        Text('Popular Cuisines', style: AppTextStyles.sectionHeader),
        height12,
        SizedBox(
          height: 90.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cuisines.length,
            separatorBuilder: (_, __) => width16,
            itemBuilder: (context, index) {
              final c = cuisines[index];
              return Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundImage: NetworkImage(c['image']!),
                  ),
                  height4,
                  Text(
                    c['title']!,
                    style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              );
            },
          ),
        ),

        height20,

        // 3. Top Chinese Deals Section
        Text('Top Chinese Deals', style: AppTextStyles.sectionHeader),
        height12,
        SizedBox(
          height: 130.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              return Container(
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.backgroundGrey,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=400',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 8.h,
                      right: 8.w,
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: AppColors.white,
                        child: Icon(Icons.add, color: AppColors.successGreen, size: 16.sp),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}