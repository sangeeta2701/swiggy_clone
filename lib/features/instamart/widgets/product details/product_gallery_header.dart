import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';


class ProductGalleryHeader extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onClose;

  const ProductGalleryHeader({
    super.key,
    required this.product,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Display Image
        Container(
          height: 280.h,
          width: double.infinity,
          color: AppColors.backgroundGrey.withOpacity(0.4),
          child: Image.network(
            product.image,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => Icon(
              Icons.shopping_bag_outlined,
              size: 80.sp,
              color: AppColors.textHint,
            ),
          ),
        ),

        // Down Arrow Dismiss Button (Top Left)
        Positioned(
          top: 12.h,
          left: 12.w,
          child: CircleAvatar(
            backgroundColor: AppColors.white.withOpacity(0.9),
            radius: 20.r,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_down, color: AppColors.textPrimary, size: 24.sp),
              onPressed: onClose,
            ),
          ),
        ),

        // Bookmark & Share Buttons (Top Right)
        Positioned(
          top: 12.h,
          right: 12.w,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.white.withOpacity(0.9),
                radius: 20.r,
                child: Icon(Icons.bookmark_outline, color: AppColors.textPrimary, size: 20.sp),
              ),
              width8,
              CircleAvatar(
                backgroundColor: AppColors.white.withOpacity(0.9),
                radius: 20.r,
                child: Icon(Icons.share_outlined, color: AppColors.textPrimary, size: 20.sp),
              ),
            ],
          ),
        ),

        // Delivery ETA Badge (Bottom Right of Image)
        Positioned(
          bottom: 12.h,
          right: 12.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              product.eta,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}