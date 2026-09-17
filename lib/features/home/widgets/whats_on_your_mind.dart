import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/food/restaurant/screen/category_items_detail_screen.dart';
import 'package:swiggy_clone/features/home/providers/category_selection_provider.dart';

class WhatsOnYourMindSection extends ConsumerWidget {
  const WhatsOnYourMindSection({super.key});

  // Expanded complete categories master list
  final List<Map<String, String>> _allCategories = const [
  {
    'title': 'Biryani',
    'image': 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=300',
  },
  {
    'title': 'Pizzas',
    'image': 'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?w=300',
  },
  {
    'title': 'Idli',
    'image': 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=300',
  },
  {
    'title': 'Dosa',
    'image': 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=300',
  },
  {
    'title': 'Vada',
    // Distinct Medu Vada asset
    'image': 'https://images.unsplash.com/photo-1626132647523-66f5bf380027?w=300',
  },
  {
    'title': 'Bath',
    // Flavored South Indian Rice (Bisi Bele / Pulao)
    'image': 'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=300',
  },
  {
    'title': 'Meals',
    // Full South Indian Thali / Meal
    'image': 'https://images.unsplash.com/photo-1610192244261-3f33de3f55e4?w=300',
  },
  {
    'title': 'Paratha',
    // Crisp Stuffed Paratha
    'image': 'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?w=300',
  },
  {
    'title': 'Tea',
    'image': 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=300',
  },
  {
    'title': 'Coffee',
    'image': 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=300',
  },
  {
    'title': 'Sandwich',
    'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300',
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
    'title': 'Fries',
    'image': 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=300',
  },
  {
    'title': 'Momos',
    'image': 'https://images.unsplash.com/photo-1625220194771-7ebdea0b70b9?w=300',
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
    'title': 'Pastry',
    'image': 'https://images.unsplash.com/photo-1550617931-e17a7b70dce2?w=300',
  },
  {
    'title': 'Pasta',
    'image': 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=300',
  },
  {
    'title': 'Noodles',
    // Hakka / Chowmein Noodles
    'image': 'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=300',
  },
  {
    'title': 'Salad',
    'image': 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=300',
  },
  {
    'title': 'Soup',
    'image': 'https://images.unsplash.com/photo-1547592180-85f173990554?w=300',
  },
  {
    'title': 'Fried Rice',
    'image': 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=300',
  },
  {
    'title': 'Kebab',
    'image': 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=300',
  },
];

  /// Time-based priority sorting engine
  List<Map<String, String>> get _timeBasedCategories {
    final hour = DateTime.now().hour;
    List<String> priorityTitles = [];

    if (hour >= 6 && hour < 11) {
      // Breakfast priority (6 AM - 11 AM)
      priorityTitles = ['Idli', 'Dosa', 'Vada', 'Bath', 'Paratha', 'Sandwich', 'Tea', 'Coffee'];
    } else if (hour >= 11 && hour < 16) {
      // Lunch priority (11 AM - 4 PM)
      priorityTitles = ['Biryani', 'Meals', 'Fried Rice', 'Paratha', 'Pizzas', 'Pasta'];
    } else if (hour >= 16 && hour < 19) {
      // Snacks priority (4 PM - 7 PM)
      priorityTitles = ['Samosa', 'Tea', 'Coffee', 'Burgers', 'Fries', 'Momos', 'Sandwich', 'Rolls'];
    } else {
      // Dinner priority (7 PM - 6 AM)
      priorityTitles = ['Biryani', 'Pizzas', 'Burgers', 'Rolls', 'Fried Rice', 'Noodles', 'Kebab'];
    }

    final priorityItems = <Map<String, String>>[];
    final remainingItems = <Map<String, String>>[];

    for (var cat in _allCategories) {
      if (priorityTitles.contains(cat['title'])) {
        priorityItems.add(cat);
      } else {
        remainingItems.add(cat);
      }
    }

    // Sort priority items to match exact priority order defined for the slot
    priorityItems.sort((a, b) {
      return priorityTitles.indexOf(a['title']!).compareTo(priorityTitles.indexOf(b['title']!));
    });

    return [...priorityItems, ...remainingItems];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = _timeBasedCategories;
    final selectedCategory = ref.watch(selectedCategoryProvider);

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
              final String title = cat['title'] ?? '';
              final bool isSelected = selectedCategory?.toLowerCase() == title.toLowerCase();

              return GestureDetector(
                onTap: () {
                  if (isSelected) {
                    ref.read(selectedCategoryProvider.notifier).state = null;
                  } else {
                    ref.read(selectedCategoryProvider.notifier).state = title;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryItemsDetailScreen(
                          selectedCategory: title,
                          categoriesList: categories,
                        ),
                      ),
                    ).then((_) {
                      ref.read(selectedCategoryProvider.notifier).state = null;
                    });
                  }
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 65.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.backgroundGrey,
                            border: Border.all(
                              color: isSelected ? AppColors.primaryOrange : Colors.transparent,
                              width: 2.w,
                            ),
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
                        if (isSelected)
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              radius: 10.r,
                              backgroundColor: AppColors.primaryOrange,
                              child: Icon(Icons.check, size: 12.sp, color: AppColors.white),
                            ),
                          ),
                      ],
                    ),
                    height8,
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                        color: isSelected ? AppColors.primaryOrange : AppColors.textPrimary,
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