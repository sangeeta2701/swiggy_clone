import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/category_sidebar.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/floating_cart_bar.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/product_card.dart';

import '../data/instamart_mock_data.dart';


class InstamartCategoryProductsScreen extends StatefulWidget {
  final String categoryName;
  final String selectedSubCategory;

  const InstamartCategoryProductsScreen({
    super.key,
    required this.categoryName,
    this.selectedSubCategory = 'Fresh Vegetables',
  });

  @override
  State<InstamartCategoryProductsScreen> createState() =>
      _InstamartCategoryProductsScreenState();
}

class _InstamartCategoryProductsScreenState
    extends State<InstamartCategoryProductsScreen> {
  late String activeSubCat;
  final Map<String, int> cartItems = {};

  @override
  void initState() {
    super.initState();
    final matchingSub = InstamartMockData.subCategories.firstWhere(
      (sub) =>
          sub.name.toLowerCase() == widget.selectedSubCategory.toLowerCase(),
      orElse: () => InstamartMockData.subCategories[0],
    );
    activeSubCat = matchingSub.name;
  }

  int get totalCartCount =>
      cartItems.values.fold(0, (sum, count) => sum + count);

  num get totalCartPrice {
    num total = 0;
    InstamartMockData.catalogProducts.forEach((_, products) {
      for (var product in products) {
        if (cartItems.containsKey(product.id)) {
          total += product.price * cartItems[product.id]!;
        }
      }
    });
    return total;
  }

  void _incrementCart(String productId) {
    setState(() {
      cartItems[productId] = (cartItems[productId] ?? 0) + 1;
    });
  }

  void _decrementCart(String productId) {
    setState(() {
      if (cartItems.containsKey(productId)) {
        if (cartItems[productId]! > 1) {
          cartItems[productId] = cartItems[productId]! - 1;
        } else {
          cartItems.remove(productId);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeProducts =
        InstamartMockData.catalogProducts[activeSubCat] ??
            InstamartMockData.catalogProducts['Fresh Vegetables']!;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.categoryName, style: AppTextStyles.instamartSectionHeader),
            Text(
              '${activeProducts.length} items available',
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.textPrimary, size: 22.sp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share_outlined, color: AppColors.textPrimary, size: 22.sp),
            onPressed: () {},
          ),
          width8,
        ],
      ),
      body: Stack(
        children: [
          Row(
            children: [
              CategorySidebar(
                categories: InstamartMockData.subCategories,
                activeCategory: activeSubCat,
                onSelectCategory: (name) => setState(() => activeSubCat = name),
              ),
              const VerticalDivider(
                width: 1,
                thickness: 1,
                color: AppColors.dividerGrey,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFilterRow(),
                    _buildSubHeader(activeProducts.length),
                    height4,
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 100.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.58,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemCount: activeProducts.length,
                        itemBuilder: (context, index) {
                          final product = activeProducts[index];
                          return ProductCard(
                            product: product,
                            quantity: cartItems[product.id] ?? 0,
                            onIncrement: () => _incrementCart(product.id),
                            onDecrement: () => _decrementCart(product.id),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          FloatingCartBar(
            totalCount: totalCartCount,
            totalPrice: totalCartPrice,
          ),
        ],
      ),
    );
  }

  Widget _buildFilterRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Row(
        children: [
          _buildFilterChip(icon: Icons.tune, label: ''),
          width8,
          _buildFilterChip(
            label: 'Sort By',
            icon: Icons.keyboard_arrow_down,
          ),
          width8,
          _buildFilterChip(
            label: 'Price Drop',
            icon: Icons.trending_down,
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildSubHeader(int count) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$count items ',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            TextSpan(
              text: 'in $activeSubCat',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip({
    required String label,
    IconData? icon,
    Color? iconColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderGrey),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14.sp, color: iconColor ?? AppColors.textPrimary),
            if (label.isNotEmpty) width4,
          ],
          if (label.isNotEmpty)
            Text(
              label,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
        ],
      ),
    );
  }
}