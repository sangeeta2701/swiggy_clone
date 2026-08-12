import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/widgets/cold%20drinks/build_filter_row.dart';
import 'package:swiggy_clone/features/instamart/widgets/cold%20drinks/build_promo_banner.dart';

import '../data/cold_drinks_mock_data.dart';
import '../widgets/categories/floating_cart_bar.dart';
import '../widgets/categories/product_card.dart';
import '../widgets/grocery/grocery_sidebar.dart';
import 'product_detail_sheet.dart';

class ColdDrinksJuicesScreen extends StatefulWidget {
  final String categoryName;
  final String selectedSubCategory;

  const ColdDrinksJuicesScreen({
    super.key,
    required this.categoryName,
    this.selectedSubCategory = 'Soft Drinks',
  });

  @override
  State<ColdDrinksJuicesScreen> createState() => _ColdDrinksJuicesScreenState();
}

class _ColdDrinksJuicesScreenState extends State<ColdDrinksJuicesScreen> {
  late String activeSubCat;
  final Map<String, int> cartItems = {};

  @override
  void initState() {
    super.initState();
    final query = widget.selectedSubCategory.toLowerCase();
    final matchingSub = ColdDrinksMockData.subCategories.firstWhere(
      (sub) {
        final subName = sub.name.toLowerCase();
        return subName == query || query.contains(subName) || subName.contains(query);
      },
      orElse: () => ColdDrinksMockData.subCategories.first,
    );
    activeSubCat = matchingSub.name;
  }

  int get totalCartCount => cartItems.values.fold(0, (sum, count) => sum + count);

  num get totalCartPrice {
    num total = 0;
    ColdDrinksMockData.catalogProducts.forEach((_, products) {
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
    final activeProducts = ColdDrinksMockData.catalogProducts[activeSubCat] ??
        ColdDrinksMockData.catalogProducts['Soft Drinks']!;

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
                categories: ColdDrinksMockData.subCategories,
                activeCategory: activeSubCat,
                onSelectCategory: (name) => setState(() => activeSubCat = name),
              ),
              const VerticalDivider(width: 1, thickness: 1, color: AppColors.dividerGrey),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Promotional Banner Box
                    buildPromoBanner(),

                    // Filter Row
                    buildFilterRow(),

                    // Products Grid View
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

          // Floating Cart Summary Bar
          FloatingCartBar(
            totalCount: totalCartCount,
            totalPrice: totalCartPrice,
          ),
        ],
      ),
    );
  }

  

  

 
}