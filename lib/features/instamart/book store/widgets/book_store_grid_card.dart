import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/book%20store/data/book_store_mock_data.dart';

class BookStoreGridCard extends StatelessWidget {
  final BookCategoryModel category;
  final VoidCallback? onTap;

  const BookStoreGridCard({
    super.key,
    required this.category,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: category.bgColor.withOpacity(0.85),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.title,
                  style: AppTextStyles.instamartItemTitle.copyWith(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),
                if (category.subtitle != null) ...[
                  height2,
                  Text(
                    category.subtitle!,
                    style: AppTextStyles.caption.copyWith(
                      color: Colors.white70,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.network(
                category.image,
                height: 40.h,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.book,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}