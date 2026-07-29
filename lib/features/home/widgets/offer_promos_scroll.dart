
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class OfferPromosScroll extends StatelessWidget {
  const OfferPromosScroll({super.key});

  final List<Map<String, dynamic>> offers = const [
    {'title': 'Min.\n₹200 OFF', 'sub': '%%'},
    {'title': 'Dishes Starting\nAt ₹29', 'sub': 'PRICE DROP'},
    {'title': 'Deal\nFeast', 'sub': 'GET 70% OFF'},
    {'title': 'Top Brands\nTop Deals', 'sub': 'FLAT ₹100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: AppColors.white.withOpacity(0.2))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'BIG BRANDS, BIGGEST LOOT!',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.white,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: Divider(color: AppColors.white.withOpacity(0.2))),
          ],
        ),
        height12,

        SizedBox(
          height: 130.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final offer = offers[index];
              return Padding(
                padding: const EdgeInsets.only(right:  8.0),
                child: Container(
                  width: 105.w,
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppColors.promoGreen,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        offer['title'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                          height: 1.2,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: AppColors.primaryOrange,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          offer['sub'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.white,
                          ),
                        ),
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