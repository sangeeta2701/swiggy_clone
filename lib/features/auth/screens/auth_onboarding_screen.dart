import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/core/widgets/app_theme_button.dart';
import 'package:swiggy_clone/features/auth/screens/phone_login_screen.dart';

class AuthOnboardingScreen extends StatelessWidget {
  const AuthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryOrange,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Top Content ( Main Text + Header Image Area)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dynamic Hero Header Title
                    height20,
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.w,
                        vertical: 16.h,
                      ),
                      child: Text(
                        'One app for food,\ngrocery, dining\nand more in mins!',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.heroTitle,
                      ),
                    ),

                    // Header Food Image Placement Holder
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        // child: Icon(
                        //   Icons.fastfood_rounded,
                        //   size: 100.sp,
                        //   color: AppColors.white.withOpacity(0.3),
                        // ),
                        child: Image.asset(
                          'assets/images/onoarding_bg.png',
                          // width: 250.w,
                          height: 270.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Curved White Sheet
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              padding: EdgeInsets.all(20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  height8,

                  // Login Button
                  AppThemeButton(
                    text: 'LOGIN',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PhoneLoginScreen(),
                        ),
                      );
                    },
                  ),

                  height16,

                  // Terms & Privacy Section
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: AppTextStyles.caption,
                      children: [
                        const TextSpan(text: 'By tapping, I accept the '),
                        TextSpan(
                          text: 'Privacy policy',
                          style: AppTextStyles.captionLink,
                        ),
                        const TextSpan(text: ',\n'),
                        TextSpan(
                          text: 'Swiggy terms of use',
                          style: AppTextStyles.captionLink,
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Instamart terms of use',
                          style: AppTextStyles.captionLink,
                        ),
                      ],
                    ),
                  ),

                  height24,

                  // Menu Box Card (Offers & Feedback)
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundGrey,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            topRight: Radius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 14.h,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.discount_outlined,
                                  size: 22.sp,
                                  color: AppColors.textPrimary,
                                ),
                                width12,
                                Expanded(
                                  child: Text(
                                    'Offers',
                                    style: AppTextStyles.listTileTitle,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 20.sp,
                                  color: AppColors.textSecondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: const Divider(
                            height: 1,
                            color: AppColors.dividerGrey,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 14.h,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  size: 22.sp,
                                  color: AppColors.textPrimary,
                                ),
                                width12,
                                Expanded(
                                  child: Text(
                                    'Feedback',
                                    style: AppTextStyles.listTileTitle,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 20.sp,
                                  color: AppColors.textSecondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  height20,

                  // App Version Text
                  Text(
                    'App version 4.112.0 (1785)',
                    style: AppTextStyles.appVersion,
                  ),

                  height12,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
