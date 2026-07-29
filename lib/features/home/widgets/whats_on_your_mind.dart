import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';


class WhatsOnYourMindSection extends StatelessWidget {
  const WhatsOnYourMindSection({super.key});

  final List<Map<String, String>> categories = const [
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
      'image': 'https://images.unsplash.com/photo-1626132647523-66f5bf380027?w=300',
    },
    {
      'title': 'Bath',
      'image': 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=300',
    },
    {
      'title': 'Sandwich',
      'image': 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=300',
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