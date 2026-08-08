import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';


class ProductInfoSection extends StatelessWidget {
  final ProductModel product;
  final String selectedType;
  final ValueChanged<String> onTypeChanged;

  const ProductInfoSection({
    super.key,
    required this.product,
    required this.selectedType,
    required this.onTypeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Link Title
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Explore all Fruits & Vegetables Category items',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.instamartBlue,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10.sp,
                  color: AppColors.instamartBlue,
                ),
              ],
            ),
          ),
          height8,

          // Main Title & Description
          Text(product.name, style: AppTextStyles.screenTitle),
          height4,
          Text(
            'Fresh, firm & great in gravies or sauces',
            style: AppTextStyles.subtitle,
          ),
          height16,

          // Type Selector Pills
          Text(
            'Type: $selectedType',
            style: AppTextStyles.inputLabel,
          ),
          height8,
          Row(
            children: [
              _buildTypePill('Hybrid ${product.name}'),
             
              _buildTypePill('Indian ${product.name}'),
            ],
          ),
          height16,

          // Quantity / Weight Variants
          Text('Quantity: ${product.weight}', style: AppTextStyles.inputLabel),
          height8,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildWeightCard(
                  title: product.weight,
                  discount: product.discount,
                  price: product.price,
                  originalPrice: product.originalPrice,
                  unitPrice: '₹${(product.price / 5).toStringAsFixed(1)}/100 g',
                  isSelected: true,
                ),
                // width12,
                _buildWeightCard(
                  title: '2 x ${product.weight}',
                  discount: '33% OFF',
                  price: product.price * 2 - 4,
                  originalPrice: product.originalPrice * 2,
                  unitPrice: '₹${((product.price * 2 - 4) / 10).toStringAsFixed(1)}/100 g',
                  isSelected: false,
                ),
              ],
            ),
          ),
          height20,

          // Payment Offers Banner
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: AppColors.backgroundGrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Icon(Icons.payment, color: AppColors.instamartBlue, size: 20.sp),
                width8,
                Text(
                  'Payment Offers  >',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          height16,

          // Trust Badges Grid (48 Hours Refund / Fast Delivery / 24/7 Support)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTrustItem(Icons.refresh, '48 Hours', 'Refund*'),
              _buildTrustItem(Icons.electric_moped_outlined, 'Fast', 'Delivery'),
              _buildTrustItem(Icons.headset_mic_outlined, '24/7', 'Support'),
            ],
          ),
          height20,

          // Highlights Accordion Section
          _buildAccordionTile(
            title: 'Highlights',
            content: Column(
              children: [
                _buildInfoRow('Included In The Box', '1 x ${product.name} (${product.weight})'),
                Divider(color: AppColors.dividerGrey.withOpacity(0.5)),
                _buildInfoRow('Pack Size', product.weight),
                Divider(color: AppColors.dividerGrey.withOpacity(0.5)),
                _buildInfoRow('Packaging Type', 'Tubular Soft Net Bags'),
              ],
            ),
          ),
          height12,

          // Seller Details Accordion
          _buildAccordionTile(
            title: 'Seller Details',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seller Name: Spwave Pvt Ltd - Bannerghatta Road',
                  style: AppTextStyles.subtitle,
                ),
                height4,
                Text(
                  'FSSAI Number: 11224334001648',
                  style: AppTextStyles.subtitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypePill(String label) {
    final isSelected = selectedType == label;
    return GestureDetector(
      onTap: () => onTypeChanged(label),
      child: Container(
        margin: EdgeInsets.only(right: 12.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.instamartLightBlue : AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.instamartBlue : AppColors.borderGrey,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected ? AppColors.instamartBlue : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }

  Widget _buildWeightCard({
    required String title,
    required String discount,
    required num price,
    required num originalPrice,
    required String unitPrice,
    required bool isSelected,
  }) {
    return Container(
      width: 120.w,
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.instamartLightBlue : AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isSelected ? AppColors.instamartBlue : AppColors.borderGrey,
          width: isSelected ? 1.5 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
          height2,
          Text(
            discount,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: AppColors.successGreen),
          ),
          height8,
          Row(
            children: [
              Text('₹$price', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
              width4,
              Text(
                '₹$originalPrice',
                style: TextStyle(fontSize: 10.sp, color: AppColors.textHint, decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Text(unitPrice, style: TextStyle(fontSize: 9.sp, color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildTrustItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, color: AppColors.textPrimary, size: 24.sp),
        height4,
        Text(title, style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold)),
        Text(subtitle, style: TextStyle(fontSize: 10.sp, color: AppColors.textSecondary)),
      ],
    );
  }

  Widget _buildAccordionTile({required String title, required Widget content}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.borderGrey.withOpacity(0.5)),
      ),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        childrenPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
        children: [content],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.subtitle),
          Text(value, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
        ],
      ),
    );
  }
}