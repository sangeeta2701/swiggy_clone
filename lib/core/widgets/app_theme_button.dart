import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';

class AppThemeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? isEnabled;
  final bool isLoading;
  final double? height;
  final double? width;

  const AppThemeButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
    this.height,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final bool canPress = (isEnabled ?? true) && !isLoading && onPressed != null;

    return SizedBox(
      width: width,
      height: height ?? 52.h,
      child: ElevatedButton(
        onPressed: canPress ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryOrange,
          disabledBackgroundColor: AppColors.primaryOrange.withOpacity(0.35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
                height: 22.h,
                width: 22.h,
                child: const CircularProgressIndicator(
                  color: AppColors.white,
                  strokeWidth: 2.5,
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  color: canPress
                      ? AppColors.white
                      : AppColors.white.withOpacity(0.8),
                ),
              ),
      ),
    );
  }
}