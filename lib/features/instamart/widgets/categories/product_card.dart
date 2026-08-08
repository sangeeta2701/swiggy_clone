import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: AppColors.backgroundGrey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.borderGrey.withOpacity(0.6),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Block + Floating Badges
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.shopping_bag_outlined,
                      size: 32.sp,
                      color: AppColors.textHint,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(2.r),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Icon(
                      Icons.circle,
                      color: AppColors.vegGreen,
                      size: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.bookmark_outline,
                    color: AppColors.textSecondary,
                    size: 18.sp,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: _buildActionButton(),
                ),
              ],
            ),
            height4,
      
            // Metadata
            Text(
              product.eta,
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.textSecondary,
              ),
            ),
            height2,
            Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
                height: 1.15,
              ),
            ),
            height4,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(
                  color: AppColors.borderGrey.withOpacity(0.5),
                ),
              ),
              child: Text(
                product.weight,
                style: TextStyle(
                  fontSize: 9.sp,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            height4,
      
            // Pricing + Conditional Badge
            if (product.badge != null) ...[
              Text(
                product.badge!,
                style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.errorRed,
                ),
              ),
              height2,
            ],
            Row(
              children: [
                Text(
                  '₹${product.price}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                width4,
                Text(
                  '₹${product.originalPrice}',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textHint,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            Text(
              product.discount,
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.successGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    if (quantity == 0) {
      return GestureDetector(
        onTap: onIncrement,
        child: Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.instamartBlue, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 4,
              ),
            ],
          ),
          child: Icon(
            Icons.add,
            color: AppColors.instamartBlue,
            size: 16.sp,
          ),
        ),
      );
    }

    return Container(
      height: 28.h,
      decoration: BoxDecoration(
        color: AppColors.instamartBlue,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Icon(Icons.remove, color: AppColors.white, size: 12.sp),
            ),
          ),
          Text(
            '$quantity',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 11.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Icon(Icons.add, color: AppColors.white, size: 12.sp),
            ),
          ),
        ],
      ),
    );
  }
}