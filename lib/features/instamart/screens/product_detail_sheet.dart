import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/features/instamart/widgets/product%20details/product_gallery_header.dart';
import 'package:swiggy_clone/features/instamart/widgets/product%20details/product_info_section.dart';
import 'package:swiggy_clone/features/instamart/widgets/product%20details/similar_products_section.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

import '../data/instamart_mock_data.dart';
import '../models/product_model.dart';


class ProductDetailSheet extends StatefulWidget {
  final ProductModel initialProduct;

  const ProductDetailSheet({
    super.key,
    required this.initialProduct,
  });

  static void show(BuildContext context, ProductModel product) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ProductDetailSheet(initialProduct: product),
    );
  }

  @override
  State<ProductDetailSheet> createState() => _ProductDetailSheetState();
}

class _ProductDetailSheetState extends State<ProductDetailSheet> {
  late ProductModel currentProduct;
  late String selectedType;

  @override
  void initState() {
    super.initState();
    currentProduct = widget.initialProduct;
    selectedType = 'Hybrid Tomato';
  }

  @override
  Widget build(BuildContext context) {
    final similarProducts = InstamartMockData.catalogProducts['Fresh Vegetables'] ?? [];

    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Opens as a bottom sheet modal
      minChildSize: 0.5,
      maxChildSize: 1.0, // Expands to full screen when scrolled up
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          child: Stack(
            children: [
              // Scrollable Details View
              SingleChildScrollView(
                controller: scrollController,
                padding: EdgeInsets.only(bottom: 80.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Gallery Header
                    ProductGalleryHeader(
                      product: currentProduct,
                      onClose: () => Navigator.pop(context),
                    ),

                    // Information Section
                    ProductInfoSection(
                      product: currentProduct,
                      selectedType: selectedType,
                      onTypeChanged: (newType) {
                        setState(() {
                          selectedType = newType;
                        });
                      },
                    ),

                    height16,

                    // Similar Products Horizontal List
                    SimilarProductsSection(
                      products: similarProducts,
                      onProductSelect: (selectedProduct) {
                        setState(() {
                          currentProduct = selectedProduct; // Dynamically update details
                        });
                      },
                    ),
                    height30,
                  ],
                ),
              ),

              // Sticky Bottom Action Bar (Price & Add Button)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                currentProduct.weight,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: AppColors.textSecondary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              width8,
                              Text(
                                currentProduct.discount,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: AppColors.successGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '₹${currentProduct.price}',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              width4,
                              Text(
                                '₹${currentProduct.originalPrice}',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.textHint,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 140.w,
                        height: 44.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.instamartBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'ADD',
                            style: AppTextStyles.buttonText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}