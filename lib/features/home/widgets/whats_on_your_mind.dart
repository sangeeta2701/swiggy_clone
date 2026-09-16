import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/screen/category_items_detail_screen.dart';

class WhatsOnYourMindSection extends StatelessWidget {
  const WhatsOnYourMindSection({super.key});

  // Updated with reliable open CDN URLs
  final List<Map<String, String>> categories = const [
    {
      'title': 'Biryani',
      'image': 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=300',
    },
    {
      'title': 'Pizzas',
      'image': 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=300',
    },
    {
      'title': 'Cakes',
      'image': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=300',
    },
    {
      'title': 'Burgers',
      'image': 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
    },
    {
      'title': 'Samosa',
      'image': 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=300',
    },
    {
      'title': 'Ice Cream',
      'image': 'https://images.unsplash.com/photo-1570197788417-0e82375c9371?w=300',
    },
    {
      'title': 'Rolls',
      'image': 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=300',
    },
    {
      'title': 'Tea',
      'image': 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=300',
    },
    {
      'title': 'Sandwich',
      'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300',
    },
    {
      'title': 'Pastry',
      'image': 'https://images.unsplash.com/photo-1550617931-e17a7b70dce2?w=300',
    },
    {
      'title': 'Fries',
      'image': 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=300',
    },
    {
      'title': 'Momos',
      'image': 'https://images.unsplash.com/photo-1625220194771-7ebdea0b70b9?w=300',
    },
    {
      'title': 'Pasta',
      'image': 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=300',
    },
    {
      'title': 'Noodles',
      'image': 'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=300',
    },
    {
      'title': 'Salad',
      'image': 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=300',
    },
    {
      'title': 'Idli',
      'image': 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What's on your mind?",
          style: AppTextStyles.sectionHeader,
        ),
        height16,
        SizedBox(
          height: 100.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (_, __) => width16,
            itemBuilder: (context, index) {
              final cat = categories[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryItemsDetailScreen(
                        selectedCategory: cat['title'] ?? 'Pizzas',
                        categoriesList: categories,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      width: 65.w,
                      height: 65.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.backgroundGrey,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          cat['image']!,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Icon(
                            Icons.fastfood_rounded,
                            size: 28.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ),
                    height8,
                    Text(
                      cat['title']!,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
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