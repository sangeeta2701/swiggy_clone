import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class InstamartCategoryProductsScreen extends StatefulWidget {
  final String categoryName;
  final String selectedSubCategory;

  const InstamartCategoryProductsScreen({
    super.key,
    required this.categoryName,
    this.selectedSubCategory = 'Seasonal Fruits',
  });

  @override
  State<InstamartCategoryProductsScreen> createState() =>
      _InstamartCategoryProductsScreenState();
}

class _InstamartCategoryProductsScreenState
    extends State<InstamartCategoryProductsScreen> {
  late String activeSubCat;

  // Sub-categories list for left sidebar
  final List<Map<String, String>> subCategories = [
    {
      'name': 'Seasonal Fruits',
      'image': 'https://pngimg.com/uploads/fruit/fruit_PNG13.png',
    },
    {
      'name': 'Milk',
      'image': 'https://pngimg.com/uploads/milk/milk_PNG99573.png',
    },
    {
      'name': 'Seasonal Veggies',
      'image': 'https://pngimg.com/uploads/vegetables/vegetables_PNG101657.png',
    },
    {
      'name': 'Meat & Seafood',
      'image': 'https://pngimg.com/uploads/meat/meat_PNG3934.png',
    },
    {
      'name': 'Paneer & Tofu',
      'image': 'https://pngimg.com/uploads/cheese/cheese_PNG2555.png',
    },
  ];

  // Mock Products List
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Zespri Kiwi Green',
      'weight': '2 Pieces',
      'eta': '6 MINS',
      'price': 117,
      'originalPrice': 149,
      'discount': '21% OFF',
      'image':
          'https://images.unsplash.com/photo-1585059819970-311832b47ee6?w=400&q=80',
    },
    {
      'name': 'Red Flesh Dragon Fruit Indian',
      'weight': '300 - 350 g',
      'eta': '6 MINS',
      'price': 39,
      'originalPrice': 54,
      'discount': '27% OFF',
      'badge': 'Price Drop',
      'image':
          'https://images.unsplash.com/photo-1527325678964-549216468488?w=400&q=80',
    },
    {
      'name': 'Premium Guava (Seebe Hannu)',
      'weight': '200 - 300 g',
      'eta': '6 MINS',
      'price': 35,
      'originalPrice': 49,
      'discount': '28% OFF',
      'image':
          'https://images.unsplash.com/photo-1536511135882-70df59d18b56?w=400&q=80',
    },
    {
      'name': 'Sweet Lime (Mosambi)',
      'weight': '500 g',
      'eta': '6 MINS',
      'price': 39,
      'originalPrice': 50,
      'discount': '22% OFF',
      'badge': 'Price Drop',
      'image':
          'https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=400&q=80',
    },
  ];

  @override
  void initState() {
    super.initState();
    activeSubCat = widget.selectedSubCategory;
  }

  @override
  Widget build(BuildContext context) {
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
              '1959 items',
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
              // --- 1. LEFT SUB-CATEGORY SIDEBAR ---
              SizedBox(
                width: 82.w,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  itemCount: subCategories.length,
                  separatorBuilder: (_, __) => height16,
                  itemBuilder: (context, index) {
                    final sub = subCategories[index];
                    final isSelected = activeSubCat == sub['name'];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          activeSubCat = sub['name']!;
                        });
                      },
                      child: Column(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            height: 62.h,
                            width: 62.w,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.instamartLightBlue
                                  : AppColors.backgroundGrey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16.r),
                              border: isSelected
                                  ? Border.all(
                                      color: AppColors.instamartBlue,
                                      width: 1.8,
                                    )
                                  : null,
                            ),
                            padding: EdgeInsets.all(6.r),
                            child: Image.network(
                              sub['image']!,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => Icon(
                                Icons.fastfood_outlined,
                                color: AppColors.textHint,
                                size: 24.sp,
                              ),
                            ),
                          ),
                          height4,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Text(
                              sub['name']!,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: isSelected
                                    ? FontWeight.w700
                                    : FontWeight.w500,
                                color: isSelected
                                    ? AppColors.textPrimary
                                    : AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const VerticalDivider(
                width: 1,
                thickness: 1,
                color: AppColors.dividerGrey,
              ),

              // --- 2. RIGHT PRODUCTS CONTAINER ---
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Filter Pills
                    SingleChildScrollView(
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
                    ),

                    // Sub-category header count
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${products.length} items ',
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
                    ),
                    height4,

                    // Products Grid View
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 90.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.52,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 12.h,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return _buildProductCard(product);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // --- 3. BOTTOM FLOATING CART BAR ---
          Positioned(
            left: 12.w,
            right: 12.w,
            bottom: 12.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: AppColors.instamartBlue,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '1 ITEM',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹39',
                        style: AppTextStyles.buttonText,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'View Cart',
                    style: AppTextStyles.buttonText,
                  ),
                  width4,
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.white,
                    size: 14.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --- FILTER CHIP WIDGET ---
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

  // --- PRODUCT CARD WIDGET ---
  Widget _buildProductCard(Map<String, dynamic> product) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image + Overlays
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  product['image'],
                  height: 125.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Veg Icon Indicator (Bottom Left)
              Positioned(
                bottom: 6.h,
                left: 6.w,
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

              // Bookmark Icon (Top Right)
              Positioned(
                top: 6.h,
                right: 6.w,
                child: Icon(
                  Icons.bookmark_outline,
                  color: AppColors.textSecondary,
                  size: 20.sp,
                ),
              ),

              // Add Button (+) Overlaid Bottom Right
              Positioned(
                bottom: 6.h,
                right: 6.w,
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.instamartBlue, width: 1.2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppColors.instamartBlue,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          height8,

          // Delivery ETA
          Text(
            product['eta'],
            style: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textSecondary,
            ),
          ),
          height4,

          // Product Title
          Text(
            product['name'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
              height: 1.2,
            ),
          ),
          height4,

          // Quantity / Weight
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: AppColors.backgroundGrey,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Text(
              product['weight'],
              style: TextStyle(
                fontSize: 9.sp,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),

          // Price drop badge if available
          if (product['badge'] != null) ...[
            Text(
              product['badge'],
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.errorRed,
              ),
            ),
            height4,
          ],

          // Pricing Row
          Row(
            children: [
              Text(
                '₹${product['price']}',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              width4,
              Text(
                '₹${product['originalPrice']}',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.textHint,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          Text(
            product['discount'],
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.successGreen,
            ),
          ),
        ],
      ),
    );
  }
}