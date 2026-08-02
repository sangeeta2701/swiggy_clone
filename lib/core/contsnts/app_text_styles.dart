import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle get heroTitle => TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        height: 1.2,
      );

  static TextStyle get locationTitle => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      );

  static TextStyle get locationSubtitle => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.white.withOpacity(0.8),
      );

  static TextStyle get categoryTab => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      );

  static TextStyle get searchHint => TextStyle(
        fontSize: 14.sp,
        color: AppColors.textHint,
      );

  static TextStyle get bannerTitle => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w900,
        color: AppColors.white,
        letterSpacing: 0.5,
      );

  static TextStyle get restaurantTitle => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      );

  static TextStyle get screenTitle => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      );

  static TextStyle get subtitle => TextStyle(
        fontSize: 13.sp,
        color: AppColors.textSecondary,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get inputLabel => TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      );

  static TextStyle get otpDigit => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      );

  static TextStyle get buttonText => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        letterSpacing: 0.8,
      );

  static TextStyle get caption => TextStyle(
        fontSize: 12.sp,
        color: AppColors.textSecondary,
      );

  static TextStyle get captionLink => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        decoration: TextDecoration.underline,
      );

  static TextStyle get listTileTitle => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      );

  static TextStyle get appVersion => TextStyle(
        fontSize: 12.sp,
        color: AppColors.textSecondary,
      );
  static TextStyle get sectionHeader => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.textPrimary,
        letterSpacing: -0.3,
      );


  static TextStyle get instamartSectionHeader => TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w800,
      color: AppColors.textPrimary,
    );

static TextStyle get instamartItemTitle => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
      height: 1.2,
    );

static TextStyle get instamartCartText => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );

    static TextStyle get categoriesHeader => TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w800,
      color: AppColors.textPrimary,
      letterSpacing: -0.5,
    );

static TextStyle get storeTitle => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.textPrimary,
      height: 1.2,
    );

static TextStyle get freeDeliveryText => TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w800,
      color: AppColors.freeDeliveryText,
      letterSpacing: 0.3,
    );

static TextStyle get instamartFooterTitle => TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w900,
      color: AppColors.textHint.withOpacity(0.4),
      letterSpacing: -1,
    );

static TextStyle get instamartFooterSubtitle => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.textHint,
    );
}

