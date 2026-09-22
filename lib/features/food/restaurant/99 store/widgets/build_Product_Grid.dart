 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/data/store_99_mock_data.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/widgets/build_Product_Card.dart';

Widget buildProductGrid(List<Store99ItemModel> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 16.h,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return buildProductCard(item);
      },
    );
  }
