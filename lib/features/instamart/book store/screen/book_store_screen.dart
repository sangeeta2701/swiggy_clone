import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/book%20store/widgets/book_store_grid_card.dart';
import 'package:swiggy_clone/features/instamart/book%20store/widgets/book_store_section_header.dart';
import 'package:swiggy_clone/features/instamart/screens/product_detail_sheet.dart';
import 'package:swiggy_clone/features/instamart/widgets/categories/product_card.dart';
import '../data/book_store_mock_data.dart';


class BookStoreScreen extends StatefulWidget {
  const BookStoreScreen({super.key});

  @override
  State<BookStoreScreen> createState() => _BookStoreScreenState();
}

class _BookStoreScreenState extends State<BookStoreScreen> {
  final Map<String, int> _cartItems = {};

  void _incrementCart(String id) {
    setState(() => _cartItems[id] = (_cartItems[id] ?? 0) + 1);
  }

  void _decrementCart(String id) {
    setState(() {
      if (_cartItems.containsKey(id)) {
        if (_cartItems[id]! > 1) {
          _cartItems[id] = _cartItems[id]! - 1;
        } else {
          _cartItems.remove(id);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE0F7FA),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
          onPressed: () => Navigator.pop(context),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Hero Banner
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Text(
                    'THE BOOK STORE',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heroTitle.copyWith(
                      color: const Color(0xFF023E8A),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5,
                    ),
                  ),
                  height16,
                  SizedBox(
                    height: 260.h,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.w,
                        crossAxisSpacing: 10.h,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: BookStoreMockData.topCategories.length,
                      itemBuilder: (context, index) {
                        return BookStoreGridCard(
                          category: BookStoreMockData.topCategories[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            height24,

            // Main Catalog Content Background Container
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
              ),
              child: Column(
                children: [
                  // Section 1: 5M+ people read it
                  const BookStoreSectionHeader(
                    title: '5M+ people read it',
                    subtitle: 'UP TO 70% OFF',
                  ),
                  height16,
                  _buildHorizontalProductList(BookStoreMockData.popularBooks),
                  height24,

                  // Section 2: Spine-tinglingly new
                  const BookStoreSectionHeader(
                    title: 'Spine-tinglingly new',
                    subtitle: 'Just in, grab \'em now',
                  ),
                  height16,
                  _buildHorizontalProductList(BookStoreMockData.newArrivals),
                  height24,

                  // Section 3: NYT Bestsellers
                  const BookStoreSectionHeader(
                    title: 'The New York Times bestsellers club',
                    subtitle: 'UP TO 75% OFF',
                  ),
                  height16,
                  _buildHorizontalProductList(BookStoreMockData.nytBestsellers),
                  height90,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalProductList(List products) {
    return SizedBox(
      height: 250.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (_, __) => width12,
        itemBuilder: (context, index) {
          final product = products[index];
          return SizedBox(
            width: 150.w,
            child: ProductCard(
              product: product,
              quantity: _cartItems[product.id] ?? 0,
              onIncrement: () => _incrementCart(product.id),
              onDecrement: () => _decrementCart(product.id),
              onTap: () => ProductDetailSheet.show(context, product),
            ),
          );
        },
      ),
    );
  }
}