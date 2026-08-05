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
    this.selectedSubCategory = 'Fresh Vegetables',
  });

  @override
  State<InstamartCategoryProductsScreen> createState() =>
      _InstamartCategoryProductsScreenState();
}

class _InstamartCategoryProductsScreenState
    extends State<InstamartCategoryProductsScreen> {
  late String activeSubCat;

  // Local Cart State: { 'product_id': quantity }
  final Map<String, int> cartItems = {};

  // Sub-categories sidebar list
  final List<Map<String, String>> subCategories = [
    {
      'name': 'Fresh Vegetables',
      'image': 'https://freepngimg.com/download/vegetable/24646-6-vegetable-photos.png',
    },
    {
      'name': 'Fresh Fruits',
      'image': 'https://freepngimg.com/download/fruit/174260-fresh-fruits-png-download-free.png',
    },
    {
      'name': 'Milk',
      'image': 'https://png.pngtree.com/png-clipart/20240619/original/pngtree-a-bottle-in-fresh-splash-milk-png-image_15366664.png',
    },
    {
      'name': 'Meat & Seafood',
      'image': 'https://pngimg.com/uploads/meat/meat_PNG3934.png',
    },
    {
      'name': 'Paneer & Tofu',
      'image': 'https://png.pngtree.com/png-vector/20240802/ourmid/pngtree-the-versatility-of-paneer-cubes-in-indian-cuisine-png-image_13343230.png',
    },
  ];

  // Dynamic products repository organized by sub-categories
  final Map<String, List<Map<String, dynamic>>> catalogProducts = {
    'Fresh Fruits': [
      {
        'id': 'ff_1',
        'name': 'Zespri Kiwi Green',
        'weight': '2 Pieces',
        'eta': '6 MINS',
        'price': 117,
        'originalPrice': 149,
        'discount': '21% OFF',
        'image': 'https://pngimg.com/uploads/kiwi/kiwi_PNG4035.png',
      },
      {
        'id': 'ff_2',
        'name': 'Red Flesh Dragon Fruit',
        'weight': '300 - 350 g',
        'eta': '6 MINS',
        'price': 39,
        'originalPrice': 54,
        'discount': '27% OFF',
        'badge': 'Price Drop',
        'image': 'https://pngimg.com/uploads/dragon_fruit/dragon_fruit_PNG18.png',
      },
      {
        'id': 'ff_3',
        'name': 'Premium Guava (Seebe Hannu)',
        'weight': '200 - 300 g',
        'eta': '6 MINS',
        'price': 35,
        'originalPrice': 49,
        'discount': '28% OFF',
        'image': 'https://pngimg.com/uploads/guava/guava_PNG49.png',
      },
      {
        'id': 'ff_4',
        'name': 'Sweet Lime (Mosambi)',
        'weight': '500 g',
        'eta': '6 MINS',
        'price': 39,
        'originalPrice': 50,
        'discount': '22% OFF',
        'badge': 'Price Drop',
        'image': 'https://pngimg.com/uploads/lime/lime_PNG33.png',
      },
      {
        'id': 'ff_5',
        'name': 'Royal Gala Apples',
        'weight': '4 Pieces (approx 500g)',
        'eta': '6 MINS',
        'price': 149,
        'originalPrice': 180,
        'discount': '17% OFF',
        'image': 'https://pngimg.com/uploads/apple/apple_PNG12405.png',
      },
      {
        'id': 'ff_6',
        'name': 'Robusta Banana',
        'weight': '1 kg',
        'eta': '6 MINS',
        'price': 42,
        'originalPrice': 55,
        'discount': '23% OFF',
        'image': 'https://pngimg.com/uploads/banana/banana_PNG827.png',
      },
      {
        'id': 'ff_7',
        'name': 'Pomegranate (Anar)',
        'weight': '500 g',
        'eta': '6 MINS',
        'price': 120,
        'originalPrice': 160,
        'discount': '25% OFF',
        'image': 'https://pngimg.com/uploads/pomegranate/pomegranate_PNG20525.png',
      },
      {
        'id': 'ff_8',
        'name': 'Fresh Papaya',
        'weight': '1 pc (approx 800g)',
        'eta': '6 MINS',
        'price': 58,
        'originalPrice': 75,
        'discount': '22% OFF',
        'image': 'https://pngimg.com/uploads/papaya/papaya_PNG12.png',
      },
    ],
    'Fresh Vegetables': [
      {
        'id': 'fv_1',
        'name': 'Fresh Broccoli',
        'weight': '250 - 300 g',
        'eta': '6 MINS',
        'price': 49,
        'originalPrice': 70,
        'discount': '30% OFF',
        'badge': 'Price Drop',
        'image': 'https://pngimg.com/uploads/broccoli/broccoli_PNG72973.png',
      },
      {
        'id': 'fv_2',
        'name': 'Fresh Tomato Hybrid',
        'weight': '500 g',
        'eta': '6 MINS',
        'price': 24,
        'originalPrice': 32,
        'discount': '25% OFF',
        'image': 'https://pngimg.com/uploads/tomato/tomato_PNG12586.png',
      },
    ],
    'Milk': [
      {
        'id': 'mk_1',
        'name': 'Amul Taaza Toned Milk',
        'weight': '500 ml',
        'eta': '6 MINS',
        'price': 27,
        'originalPrice': 27,
        'discount': 'MRP',
        'image': 'https://pngimg.com/uploads/milk/milk_PNG99573.png',
      },
      {
        'id': 'mk_2',
        'name': 'Nandini GoodLife Cow Milk',
        'weight': '1 Litre',
        'eta': '6 MINS',
        'price': 56,
        'originalPrice': 60,
        'discount': '6% OFF',
        'image': 'https://pngimg.com/uploads/milk/milk_PNG99573.png',
      },
    ],
    'Meat & Seafood': [
      {
        'id': 'ms_1',
        'name': 'Fresh Chicken Curry Cut',
        'weight': '500 g',
        'eta': '6 MINS',
        'price': 169,
        'originalPrice': 220,
        'discount': '23% OFF',
        'image': 'https://pngimg.com/uploads/meat/meat_PNG3934.png',
      },
    ],
    'Paneer & Tofu': [
      {
        'id': 'pt_1',
        'name': 'Amul Fresh Malai Paneer',
        'weight': '200 g',
        'eta': '6 MINS',
        'price': 91,
        'originalPrice': 95,
        'discount': '4% OFF',
        'image': 'https://pngimg.com/uploads/cheese/cheese_PNG2555.png',
      },
    ],
  };

  @override
  void initState() {
    super.initState();
    final matchingSub = subCategories.firstWhere(
      (sub) =>
          sub['name']!.toLowerCase() ==
          widget.selectedSubCategory.toLowerCase(),
      orElse: () => subCategories[0],
    );
    activeSubCat = matchingSub['name']!;
  }

  int get totalCartCount =>
      cartItems.values.fold(0, (sum, count) => sum + count);

  num get totalCartPrice {
    num total = 0;
    catalogProducts.forEach((_, products) {
      for (var product in products) {
        final id = product['id'] as String;
        if (cartItems.containsKey(id)) {
          total += (product['price'] as num) * cartItems[id]!;
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
        catalogProducts[activeSubCat] ?? catalogProducts['Fresh Vegetables']!;

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
              // --- 1. LEFT SIDEBAR ---
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
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

                    // Active Category Sub-header
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${activeProducts.length} items ',
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

                    // Products Grid View (Tightened aspect ratio to 0.64 to remove gaps)
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 100.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.60, 
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemCount: activeProducts.length,
                        itemBuilder: (context, index) {
                          final product = activeProducts[index];
                          return _buildProductCard(product);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // --- 3. FLOATING CART BAR ---
          if (totalCartCount > 0)
            Positioned(
              left: 12.w,
              right: 12.w,
              bottom: 12.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.instamartBlue,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.instamartBlue.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$totalCartCount ${totalCartCount == 1 ? 'ITEM' : 'ITEMS'}',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '₹$totalCartPrice',
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

  // --- COMPACT PRODUCT CARD (Zero Empty Vertical Spacers) ---
  Widget _buildProductCard(Map<String, dynamic> product) {
    final String id = product['id'];
    final int qty = cartItems[id] ?? 0;

    return Container(
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
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image + Overlays Stack
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 80.h,
                width: double.infinity,
                child: Image.network(
                  product['image'],
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.shopping_bag_outlined,
                    size: 32.sp,
                    color: AppColors.textHint,
                  ),
                ),
              ),

              // Veg Icon
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

              // Bookmark
              Positioned(
                top: 0,
                right: 0,
                child: Icon(
                  Icons.bookmark_outline,
                  color: AppColors.textSecondary,
                  size: 18.sp,
                ),
              ),

              // Add / Increment Button
              Positioned(
                bottom: 0,
                right: 0,
                child: qty == 0
                    ? GestureDetector(
                        onTap: () => _incrementCart(id),
                        child: Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                                color: AppColors.instamartBlue, width: 1.2),
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
                            size: 16.sp,
                          ),
                        ),
                      )
                    : Container(
                        height: 28.h,
                        decoration: BoxDecoration(
                          color: AppColors.instamartBlue,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () => _decrementCart(id),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.white,
                                  size: 12.sp,
                                ),
                              ),
                            ),
                            Text(
                              '$qty',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _incrementCart(id),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.white,
                                  size: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
          height4,

          // Delivery ETA
          Text(
            product['eta'],
            style: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textSecondary,
            ),
          ),
          height2,

          // Product Title
          Text(
            product['name'],
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

          // Weight Badge
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
              product['weight'],
              style: TextStyle(
                fontSize: 9.sp,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          height4, // Tight gap directly to price block

          // Price Drop Badge (Only takes vertical space when active)
          if (product['badge'] != null) ...[
            Text(
              product['badge'],
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.errorRed,
              ),
            ),
            height2,
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
              fontSize: 9.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.successGreen,
            ),
          ),
        ],
      ),
    );
  }
}