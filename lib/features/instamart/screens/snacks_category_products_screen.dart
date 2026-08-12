import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

import '../data/snacks_mock_data.dart';
import '../widgets/categories/floating_cart_bar.dart';
import '../widgets/categories/product_card.dart';
import '../widgets/grocery/grocery_sidebar.dart';
import 'product_detail_sheet.dart';

class SnacksCategoryProductsScreen extends StatefulWidget {
  final String categoryName;
  final String selectedSubCategory;

  const SnacksCategoryProductsScreen({
    super.key,
    required this.categoryName,
    this.selectedSubCategory = 'Chips & Namkeens',
  });

  @override
  State<SnacksCategoryProductsScreen> createState() =>
      _SnacksCategoryProductsScreenState();
}

class _SnacksCategoryProductsScreenState
    extends State<SnacksCategoryProductsScreen> {
  late String activeSubCat;
  final Map<String, int> cartItems = {};

  @override
  void initState() {
    super.initState();
    final query = widget.selectedSubCategory.toLowerCase();
    final matchingSub = SnacksMockData.subCategories.firstWhere(
      (sub) {
        final subName = sub.name.toLowerCase();
        return subName == query || query.contains(subName) || subName.contains(query);
      },
      orElse: () => SnacksMockData.subCategories.first, // Defaults to Chips & Namkeens
    );
    activeSubCat = matchingSub.name;
  }

  int get totalCartCount => cartItems.values.fold(0, (sum, count) => sum + count);

  num get totalCartPrice {
    num total = 0;
    SnacksMockData.catalogProducts.forEach((_, products) {
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
    final activeProducts = SnacksMockData.catalogProducts[activeSubCat] ??
        SnacksMockData.catalogProducts['Chips & Namkeens']!;

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
        title: Text(widget.categoryName, style: AppTextStyles.instamartSectionHeader),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.textPrimary, size: 22.sp),
            onPressed: () {},
          ),
          width8,
        ],
      ),
      body: Stack(
        children: [
          Row(
            children: [
              GrocerySidebar(
                categories: SnacksMockData.subCategories,
                activeCategory: activeSubCat,
                onSelectCategory: (name) => setState(() => activeSubCat = name),
              ),
              const VerticalDivider(width: 1, thickness: 1, color: AppColors.dividerGrey),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFilterRow(),
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
                          return GestureDetector(
                            onTap: () => ProductDetailSheet.show(context, product),
                            child: ProductCard(
                              product: product,
                              quantity: cartItems[product.id] ?? 0,
                              onIncrement: () => _incrementCart(product.id),
                              onDecrement: () => _decrementCart(product.id),
                              onTap: () {
                              ProductDetailSheet.show(context, product);
                              
                            },
                            ),
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      child: Row(
        children: [
          _buildFilterChip(icon: Icons.tune, label: ''),
          width8,
          _buildFilterChip(label: 'Sort By', icon: Icons.keyboard_arrow_down),
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