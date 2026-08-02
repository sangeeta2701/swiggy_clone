import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class ShopByStoreSection extends StatelessWidget {
  const ShopByStoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final stores = [
      {
        'name': 'Print\nStore',
        'image': 'https://cdn-icons-png.flaticon.com/512/2659/2659360.png',
        'bgColor': const Color(0xFFDCEBFF),
      },
      {
        'name': 'Book\nStore',
        'image': 'https://cdn-icons-png.flaticon.com/512/3389/3389081.png',
        'bgColor': const Color(0xFFCDE2FE),
      },
      {
        'name': 'The Noice\nStore',
        'image': 'https://cdn-icons-png.flaticon.com/512/2553/2553658.png',
        'bgColor': const Color(0xFFFFF3C4),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Shop by Store',
            style: AppTextStyles.instamartSectionHeader,
          ),
        ),
        height12,
        SizedBox(
          height: 145.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: stores.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final store = stores[index];
              return Column(
                children: [
                  Container(
                    width: 105.w,
                    height: 95.h,
                    decoration: BoxDecoration(
                      color: store['bgColor'] as Color,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(52.r),
                        bottom: Radius.circular(16.r),
                      ),
                    ),
                    padding: EdgeInsets.all(10.r),
                    child: Center(
                      child: Image.network(
                        store['image'] as String,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) => Icon(
                          Icons.storefront_rounded,
                          size: 36.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                  height8,
                  Text(
                    store['name'] as String,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.storeTitle,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}