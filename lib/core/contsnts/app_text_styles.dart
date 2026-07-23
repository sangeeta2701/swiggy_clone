import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Large Hero Heading (On Orange Background)
  static TextStyle heroTitle = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
    height: 1.2,
    letterSpacing: -0.5,
  );

  // Screen Title ("Login")
  static TextStyle headingLarge = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Subtitle / Body Medium ("Enter your phone number to proceed")
  static TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // Form Field Input & Placeholder
  static TextStyle inputText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle inputHint = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textHint,
  );

  // Primary Button Text ("LOGIN", "CONTINUE")
  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    letterSpacing: 0.5,
  );

  // Legal / Footer Terms Text
  static TextStyle caption = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.4,
  );

  // Clickable Legal Terms (Underlined / Bold)
  static TextStyle captionLink = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    decoration: TextDecoration.underline,
  );

  // List Tile Item Titles ("Offers", "Feedback")
  static TextStyle listTileTitle = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  
  // App Version Footer
  static TextStyle appVersion = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );
}