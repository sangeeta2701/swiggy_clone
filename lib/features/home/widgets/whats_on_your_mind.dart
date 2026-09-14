import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';


class WhatsOnYourMindSection extends StatelessWidget {
  const WhatsOnYourMindSection({super.key});

  final List<Map<String, String>> categories = const [
    {
      'title': 'Biryani',
      'image': 'https://png.pngtree.com/png-clipart/20230522/original/pngtree-chicken-biryani-front-view-png-image_9167532.png',
    },
    {
      'title': 'Pizzas',
      'image': 'https://png.pngtree.com/png-vector/20241211/ourmid/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png',
    },
    {
      'title': 'Cakes',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5x-EJyHBgieb1z3YLPzvauR7n57gWZ81C4dvph3B1vw&s=10',
    },
    {
      'title': 'Burgers',
      'image': 'https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png',
    },
    {
      'title': 'Samosa',
      'image': 'https://png.pngtree.com/png-clipart/20230508/original/pngtree-indian-samosa-png-image_9151772.png',
    },
    {
      'title': 'Ice Cream',
      'image': 'https://png.pngtree.com/png-clipart/20250128/original/pngtree-four-flavour-ice-cream-in-bowl-png-image_19782937.png',
    },
    {
      'title': 'Rolls',
      'image': 'https://png.pngtree.com/png-clipart/20250222/original/pngtree-high-quality-roti-roll-with-paneer-kathi-chicken-veg-and-egg-png-image_20493597.png',
    },
    {
      'title': 'Tea',
      'image': 'https://png.pngtree.com/png-clipart/20250128/original/pngtree-tea-cup-png-image_19735035.png',
    },
    {
      'title': 'Sandwich',
      'image': 'https://png.pngtree.com/png-clipart/20241121/original/pngtree-sandwich-png-image_17279490.png',
    },
    {
      'title': 'Pastry',
      'image': 'https://png.pngtree.com/png-clipart/20231008/original/pngtree-realistic-transparent-pastry-cake-for-food-menu-or-restaurant-png-image_13291147.png',
    },
    {
      'title': 'Fries',
      'image': 'https://png.pngtree.com/png-clipart/20250429/original/pngtree-hot-and-crispy-french-fries-in-red-box-png-image_20891964.png',
    },
    {
      'title': 'Momos',
      'image': 'https://png.pngtree.com/png-clipart/20250206/original/pngtree-traditional-newari-momos-on-white-background-png-image_20372781.png',
    },
    {
      'title': 'Pasta',
      'image': 'https://png.pngtree.com/png-clipart/20250516/original/pngtree-bowl-of-tricolor-pasta-with-vegetables-and-basil-for-italian-food-png-image_21001498.png',
    },
    {
      'title': 'Noodles',
      'image': 'https://freepngimg.com/thumb/noodle/105440-noodle.png',
    },
    {
      'title': 'Salad',
      'image': 'https://png.pngtree.com/png-clipart/20250303/original/pngtree-delicious-green-salad-with-healthy-ingredients-png-image_20557958.png',
    },
    {
      'title': 'Idli',
      'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300',
    },
    {
      'title': 'Soup',
      'image': 'https://png.pngtree.com/png-vector/20240822/ourmid/pngtree-vegetable-soup-mastery-tips-and-tricks-for-a-perfectly-balanced-png-image_13581187.png',
    },
    {
      'title': 'Fried Rice',
      'image': 'https://png.pngtree.com/png-clipart/20250111/original/pngtree-pan-of-chinese-fried-rice-on-transparent-background-png-image_19048184.png',
    },
    {
      'title': 'Kebab',
      'image': 'https://png.pngtree.com/png-clipart/20240628/original/pngtree-healthy-and-delicious-modern-takes-on-seekh-kababs-grill-like-a-png-image_15428527.png',
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
              return Column(
                children: [
                  Container(
                    width: 65.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.backgroundGrey,
                      image: DecorationImage(
                        image: NetworkImage(cat['image']!),
                        fit: BoxFit.cover,
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
              );
            },
          ),
        ),
      ],
    );
  }
}