import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class ShopByStoreSection extends StatelessWidget {
  const ShopByStoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Direct working URLs hosted on open CDNs
    final stores = [
      {
        'name': 'Print\nStore',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Printer_icon_font_awesome.svg/512px-Printer_icon_font_awesome.svg.png',
        'bgColor': const Color(0xFFDCEBFF),
      },
      {
        'name': 'Book\nStore',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Open_book_icon.svg/512px-Open_book_icon.svg.png',
        'bgColor': const Color(0xFFCDE2FE),
      },
      {
        'name': 'The Noice\nStore',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Food_icon.svg/512px-Food_icon.svg.png',
        'bgColor': const Color(0xFFFFF3C4),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Shop by Store',
            style: AppTextStyles.instamartSectionHeader,
          ),
        ),
        height12,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: stores.map((store) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: store['bgColor'] as Color,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(46.r),
                              bottom: Radius.circular(16.r),
                            ),
                          ),
                          padding: EdgeInsets.all(14.r),
                          child: Center(
                            child: Image.network(
                              store['image'] as String,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => Icon(
                                Icons.storefront_rounded,
                                size: 32.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      height8,
                      Text(
                        store['name'] as String,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: AppTextStyles.storeTitle?.copyWith(
                          height: 1.15,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}