// lib/features/home/widgets/offer_promos_scroll.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class OfferPromosScroll extends StatelessWidget {
  const OfferPromosScroll({super.key});

  final List<Map<String, dynamic>> offers = const [
    {'title': 'Min.\n₹200 OFF', 'sub': '%%'},
    {'title': 'Dishes Starting\nAt ₹29', 'sub': 'PRICE\nDROP'},
    {'title': 'Deal\nFeast', 'sub': 'GET 70%\nOFF'},
    {'title': 'Top Brands\nTop Deals', 'sub': 'FLAT ₹100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title divider
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

        // Offer Cards
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final offer = offers[index];
              return Container(
                width: 100.w,
                padding: EdgeInsets.all(10.w),
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
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.w),
                      decoration: BoxDecoration(
                        color: AppColors.primaryOrange,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        offer['sub'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w900,
                          color: AppColors.white,
                        ),
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