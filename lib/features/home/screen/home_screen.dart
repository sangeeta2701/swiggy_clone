// lib/features/home/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/home/widgets/custom_bottom_nav.dart';
import 'package:swiggy_clone/features/home/widgets/home_location_header.dart';
import 'package:swiggy_clone/features/home/widgets/home_search_bar.dart';
import 'package:swiggy_clone/features/home/widgets/offer_promos_scroll.dart';
import 'package:swiggy_clone/features/home/widgets/restaurant_horizontal_list.dart';
import 'package:swiggy_clone/features/home/widgets/top_services_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: const CustomBottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Purple Curved Banner Header Section
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10.h,
                left: 16.w,
                right: 16.w,
                bottom: 20.h,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.homePurple, AppColors.homePurpleDark],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r),
                ),
              ),
              child: Column(
                children: [
                  const HomeLocationHeader(),
                  height16,
                  const TopServicesBar(),
                  height16,
                  const HomeSearchBar(),
                  height20,
                  const OfferPromosScroll(),
                ],
              ),
            ),
            height20,

            // Lower White Body Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const RestaurantHorizontalList(),
            ),
            height30,
          ],
        ),
      ),
    );
  }
}