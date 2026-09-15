import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/build_Chip_Filter.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/build_Compact_Toggle.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/build_Restaurant_Header_Card.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/item_detail_sheets.dart';
import 'package:swiggy_clone/features/food/restaurant/widget/menu_item_card.dart';
import '../data/restaurant_mock_data.dart';
import '../models/restaurant_menu_model.dart';

class RestaurantDetailScreen extends StatefulWidget {
  final String restaurantName;

  const RestaurantDetailScreen({super.key, required this.restaurantName});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  static const double _scrollOffsetPadding = 12.0;

  final Map<String, int> _cart = {};
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _categoryKeys = {};

  bool _isVegOnly = false;
  bool _isNonVegOnly = false;

  OverlayEntry? _menuOverlayEntry;
  bool _isMenuOpen = false;

  String? _highlightedCategory;

  @override
  void initState() {
    super.initState();
    for (var cat in RestaurantMockData.sampleMenu) {
      _categoryKeys[cat.categoryName] = GlobalKey();
    }
  }

  @override
  void dispose() {
    _removeMenuOverlay();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToCategory(String categoryName) {
    final key = _categoryKeys[categoryName];
    final ctx = key?.currentContext;

    _removeMenuOverlay();

    setState(() => _highlightedCategory = categoryName);
    Future.delayed(const Duration(milliseconds: 900), () {
      if (mounted && _highlightedCategory == categoryName) {
        setState(() => _highlightedCategory = null);
      }
    });

    if (ctx == null) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final box = ctx.findRenderObject() as RenderBox?;
      if (box == null || !_scrollController.hasClients) return;

      final viewport = RenderAbstractViewport.of(box);
      final double targetOffset =
          viewport.getOffsetToReveal(box, 0.0).offset - _scrollOffsetPadding;

      final double maxOffset = _scrollController.position.maxScrollExtent;
      final double finalOffset = targetOffset.clamp(0.0, maxOffset);

      _scrollController.animateTo(
        finalOffset,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutCubic,
      );
    });
  }

  void _toggleMenuOverlay() {
    if (_isMenuOpen) {
      _removeMenuOverlay();
    } else {
      _showMenuOverlay();
    }
  }

  void _removeMenuOverlay() {
    _menuOverlayEntry?.remove();
    _menuOverlayEntry = null;
    if (_isMenuOpen && mounted) {
      setState(() => _isMenuOpen = false);
    }
  }

  void _showMenuOverlay() {
    final overlay = Overlay.of(context);
    final int totalCartCount = _cart.values.fold(0, (sum, val) => sum + val);

    _menuOverlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            GestureDetector(
              onTap: _removeMenuOverlay,
              behavior: HitTestBehavior.translucent,
              child: Container(color: Colors.black38),
            ),
            Positioned(
              right: 16.w,
              bottom: totalCartCount > 0 ? 150.h : 95.h,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 220.w,
                  constraints: BoxConstraints(maxHeight: 280.h),
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 14.w,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF11141A),
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: RestaurantMockData.sampleMenu.map((cat) {
                        final int itemCount = cat.items.length;
                        return InkWell(
                          onTap: () => _scrollToCategory(cat.categoryName),
                          borderRadius: BorderRadius.circular(8.r),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 6.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    cat.categoryName,
                                    style: AppTextStyles.buttonText.copyWith(
                                      fontSize: 13.sp,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  '$itemCount',
                                  style: AppTextStyles.caption.copyWith(
                                    color: AppColors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    overlay.insert(_menuOverlayEntry!);
    setState(() => _isMenuOpen = true);
  }

  void _handleAddToCart(MenuItem item, int count, double price) {
    setState(() {
      _cart[item.id] = (_cart[item.id] ?? 0) + count;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int totalCartCount = _cart.values.fold(0, (sum, val) => sum + val);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C0A0A),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white, size: 22.sp),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Container(
          width: 44.r,
          height: 44.r,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              widget.restaurantName.isNotEmpty ? widget.restaurantName[0] : 'R',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.errorRed,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person_add_outlined,
              color: AppColors.white,
              size: 22.sp,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: AppColors.white, size: 22.sp),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRestaurantHeaderCard(
                  restaurantName: widget.restaurantName,
                ),
                height12,

                // Search Dishes Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 42.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundGrey,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Search for dishes',
                            style: AppTextStyles.subtitle.copyWith(
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 20.sp,
                          color: AppColors.textSecondary,
                        ),
                        width12,
                        Icon(
                          Icons.mic,
                          size: 20.sp,
                          color: AppColors.primaryOrange,
                        ),
                      ],
                    ),
                  ),
                ),
                height12,

                // Compact Filter Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      buildCompactToggle('Veg', _isVegOnly, (val) {
                        setState(() {
                          _isVegOnly = val;
                          if (val) _isNonVegOnly = false;
                        });
                      }, AppColors.vegGreen),
                      width8,
                      buildCompactToggle('Non-Veg', _isNonVegOnly, (val) {
                        setState(() {
                          _isNonVegOnly = val;
                          if (val) _isVegOnly = false;
                        });
                      }, AppColors.errorRed),
                      width8,
                      buildChipFilter('EatRight', icon: Icons.verified),
                      width8,
                      buildChipFilter('Ratings 4.0+'),
                    ],
                  ),
                ),

                height16,

                // Menu Accordions
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: RestaurantMockData.sampleMenu.length,
                  itemBuilder: (context, catIndex) {
                    final category = RestaurantMockData.sampleMenu[catIndex];

                    final filteredItems = category.items.where((item) {
                      if (_isVegOnly) return item.isVeg;
                      if (_isNonVegOnly) return !item.isVeg;
                      return true;
                    }).toList();

                    if (filteredItems.isEmpty) return const SizedBox.shrink();

                    final bool isHighlighted =
                        _highlightedCategory == category.categoryName;

                    return AnimatedContainer(
                      key: _categoryKeys[category.categoryName],
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeOut,
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      decoration: BoxDecoration(
                        color: isHighlighted
                            ? AppColors.primaryOrange.withOpacity(0.08)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Theme(
                        data: Theme.of(
                          context,
                        ).copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          initiallyExpanded: true,
                          title: Text(
                            '${category.categoryName} (${filteredItems.length})',
                            style: AppTextStyles.sectionHeader.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          children: filteredItems.map((item) {
                            // return InkWell(
                            //   onTap: () {
                            //     ItemDetailSheets.showItemDetail(
                            //       context: context,
                            //       item: item,
                            //       currentQuantity: _cart[item.id] ?? 0,
                            //       onAddToCart: (count, price) =>
                            //           _handleAddToCart(item, count, price),
                            //     );
                            //   },
                            //   child: MenuItemCard(
                            //     item: item,
                            //     count: _cart[item.id] ?? 0,
                            //     onAdd: () {
                            //       if (item.isCustomisable &&
                            //           item.options != null &&
                            //           item.options!.isNotEmpty) {
                            //         ItemDetailSheets.showCustomisationSheet(
                            //           context: context,
                            //           item: item,
                            //           onAddToCart: (count, price) =>
                            //               _handleAddToCart(item, count, price),
                            //         );
                            //       } else {
                            //         _handleAddToCart(item, 1, item.price);
                            //       }
                            //     },
                            //     onRemove: () {
                            //       setState(() {
                            //         if (_cart.containsKey(item.id)) {
                            //           if (_cart[item.id]! > 1) {
                            //             _cart[item.id] = _cart[item.id]! - 1;
                            //           } else {
                            //             _cart.remove(item.id);
                            //           }
                            //         }
                            //       });
                            //     },
                            //   ),
                            // );
                            return InkWell(
                              onTap: () {
                                ItemDetailSheets.showItemDetail(
                                  context: context,
                                  item: item,
                                  currentQuantity: _cart[item.id] ?? 0,
                                  onAddToCart: (count, price) =>
                                      _handleAddToCart(item, count, price),
                                );
                              },
                              child: MenuItemCard(
                                item: item,
                                count: _cart[item.id] ?? 0,
                                onAdd: () {
                                  final bool canCustomise =
                                      item.isCustomisable == true &&
                                      item.options != null &&
                                      item.options!.isNotEmpty;

                                  if (canCustomise) {
                                    ItemDetailSheets.showCustomisationSheet(
                                      context: context,
                                      item: item,
                                      onAddToCart: (count, price) =>
                                          _handleAddToCart(item, count, price),
                                    );
                                  } else {
                                    _handleAddToCart(item, 1, item.price);
                                  }
                                },
                                onRemove: () {
                                  setState(() {
                                    if (_cart.containsKey(item.id)) {
                                      if (_cart[item.id]! > 1) {
                                        _cart[item.id] = _cart[item.id]! - 1;
                                      } else {
                                        _cart.remove(item.id);
                                      }
                                    }
                                  });
                                },
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    );
                  },
                ),

                height90,
              ],
            ),
          ),

          // Floating Green Cart Bottom Bar (Image 2)
          if (totalCartCount > 0)
            Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 16.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppColors.successGreen,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$totalCartCount ${totalCartCount == 1 ? 'Item' : 'Items'} added',
                      style: AppTextStyles.buttonText.copyWith(fontSize: 15.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          'View Cart',
                          style: AppTextStyles.buttonText.copyWith(
                            fontSize: 15.sp,
                          ),
                        ),
                        width4,
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.white,
                          size: 14.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          // Floating MENU Button
          Positioned(
            right: 16.w,
            bottom: totalCartCount > 0 ? 80.h : 24.h,
            child: GestureDetector(
              onTap: _toggleMenuOverlay,
              child: Container(
                width: 56.r,
                height: 56.r,
                decoration: const BoxDecoration(
                  color: Color(0xFF11141A),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _isMenuOpen ? Icons.close : Icons.restaurant_menu,
                      color: AppColors.white,
                      size: 18.sp,
                    ),
                    height2,
                    Text(
                      _isMenuOpen ? 'CLOSE' : 'ITEMS',
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w900,
                        color: AppColors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
