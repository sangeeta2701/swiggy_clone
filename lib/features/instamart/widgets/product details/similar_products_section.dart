import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';


class SimilarProductsSection extends StatelessWidget {
  final List<ProductModel> products;
  final ValueChanged<ProductModel> onProductSelect;

  const SimilarProductsSection({
    super.key,
    required this.products,
    required this.onProductSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Similar Products',
            style: AppTextStyles.instamartSectionHeader,
          ),
        ),
        height12,
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (_, __) => width12,
            itemBuilder: (context, index) {
              final product = products[index];
              return Padding(
                padding:  EdgeInsets.only(right: 12.w),
                child: GestureDetector(
                  onTap: () => onProductSelect(product),
                  child: Container(
                    width: 130.w,
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: AppColors.borderGrey.withOpacity(0.6)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Thumbnail
                        Stack(
                          children: [
                            Container(
                              height: 85.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.backgroundGrey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Image.network(
                                product.image,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              bottom: 4.h,
                              right: 4.w,
                              child: Container(
                                padding: EdgeInsets.all(4.r),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(color: AppColors.instamartBlue),
                                ),
                                child: Icon(Icons.add, size: 14.sp, color: AppColors.instamartBlue),
                              ),
                            ),
                          ],
                        ),
                        height8,
                
                        // Title
                        Text(
                          product.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        height4,
                
                        // Weight Badge
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundGrey,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Text(
                            product.weight,
                            style: TextStyle(fontSize: 8.sp, color: AppColors.textSecondary),
                          ),
                        ),
                        const Spacer(),
                
                        // Price Row
                        Row(
                          children: [
                            Text('₹${product.price}', style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold)),
                            width4,
                            Text('₹${product.originalPrice}', style: TextStyle(fontSize: 9.sp, color: AppColors.textHint, decoration: TextDecoration.lineThrough)),
                          ],
                        ),
                      ],
                    ),
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