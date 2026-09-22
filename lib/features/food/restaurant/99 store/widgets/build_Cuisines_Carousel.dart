import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/99%20store/provider/store_99_filter_provider.dart';

class Store99CuisinesCarousel extends StatelessWidget {
  final Store99FilterState state;
  final Store99FilterNotifier notifier;

  const Store99CuisinesCarousel({
    super.key,
    required this.state,
    required this.notifier,
  });

  // Cuisines list defined directly inside the widget scope
 static const List<Map<String, String>> cuisines = [
  {'title': 'All', 'image': 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=300'},
  {'title': 'Idli', 'image': 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=300'},
  {'title': 'Dosa', 'image': 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=300'},
  {'title': 'Vada', 'image': 'https://images.unsplash.com/photo-1626132647523-66f5bf380027?w=300'},
  {'title': 'Tea', 'image': 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=300'},
  {'title': 'Bath', 'image': 'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=300'},
  {'title': 'Coffee', 'image': 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=300'},
  {'title': 'Sandwich', 'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300'},
  {'title': 'Biryani', 'image': 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=300'},
  {'title': 'Burgers', 'image': 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300'},
  {'title': 'Rolls', 'image': 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=300'},
  {'title': 'Noodles', 'image': 'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=300'},
  {'title': 'Paratha', 'image': 'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?w=300'},
  {'title': 'Meals', 'image': 'https://images.unsplash.com/photo-1610192244261-3f33de3f55e4?w=300'},
  {'title': 'Cakes', 'image': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=300'},
  {'title': 'Samosa', 'image': 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=300'},
  {'title': 'Fries', 'image': 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=300'},
  {'title': 'Momos', 'image': 'https://images.unsplash.com/photo-1625220194771-7ebdea0b70b9?w=300'},
  {'title': 'Ice Cream', 'image': 'https://images.unsplash.com/photo-1570197788417-0e82375c9371?w=300'},
  {'title': 'Pastry', 'image': 'https://images.unsplash.com/photo-1550617931-e17a7b70dce2?w=300'},
  {'title': 'Pasta', 'image': 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=300'},
  {'title': 'Salad', 'image': 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=300'},
  {'title': 'Soup', 'image': 'https://images.unsplash.com/photo-1547592180-85f173990554?w=300'},
  {'title': 'Fried Rice', 'image': 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=300'},
  {'title': 'Kebab', 'image': 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=300'},
];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!state.hasAnyFilter) ...[
          Text('Popular Cuisines', style: AppTextStyles.sectionHeader),
          height12,
        ],
        SizedBox(
          height: 90.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cuisines.length,
            separatorBuilder: (_, __) => width16,
            itemBuilder: (context, index) {
              final c = cuisines[index];
              final bool isSelected =
                  state.selectedCategory.toLowerCase() == c['title']!.toLowerCase();

              return GestureDetector(
                onTap: () => notifier.setSelectedCategory(c['title']!),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 58.w,
                          height: 58.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryOrange
                                  : Colors.transparent,
                              width: 2.5,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.network(
                              c['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (isSelected)
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              radius: 8.r,
                              backgroundColor: AppColors.primaryOrange,
                              child: Icon(
                                Icons.check,
                                size: 10.sp,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                    height4,
                    Text(
                      c['title']!,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                        color: isSelected
                            ? AppColors.primaryOrange
                            : AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}