import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/print%20store/widgets/_buildOptionTile.dart';

class CustomisePrintScreen extends StatefulWidget {
  final String? filePath;
  final String fileName;

  const CustomisePrintScreen({
    super.key,
    this.filePath,
    required this.fileName,
  });

  @override
  State<CustomisePrintScreen> createState() => _CustomisePrintScreenState();
}

class _CustomisePrintScreenState extends State<CustomisePrintScreen> {
  int _copies = 1;
  String _orientation = 'Portrait';
  String _colorType = 'B&W';

  num get _pricePerPage => _colorType == 'B&W' ? 2 : 10;
  num get _totalPrice => _copies * _pricePerPage;

  void _showLeaveConfirmationDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          title: Text(
            'Are You Sure?',
            style: AppTextStyles.screenTitle.copyWith(
              fontSize: 18.sp,
            ),
          ),
          content: Text(
            'Leaving this page will delete your uploaded document. You\'ll need to upload it again to print.',
            style: AppTextStyles.subtitle.copyWith(
              height: 1.4,
            ),
          ),
          actionsPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
          actions: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.backgroundGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: Text(
                      'Cancel',
                      style: AppTextStyles.buttonText.copyWith(
                        fontSize: 13.sp,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ),
                width12,
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.instamartBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      elevation: 0,
                    ),
                    child: Text(
                      'Yes, Leave',
                      style: AppTextStyles.buttonText.copyWith(
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          _showLeaveConfirmationDialog();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.backgroundGrey,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: AppColors.textPrimary, size: 22.sp),
            onPressed: _showLeaveConfirmationDialog,
          ),
          title: Text(
            'Customise Print',
            style: AppTextStyles.instamartSectionHeader,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Add documents',
                style: AppTextStyles.buttonText.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.instamartBlue,
                ),
              ),
            ),
            width8,
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundGrey,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: AppColors.dividerGrey),
                          ),
                          child: widget.filePath != null &&
                                  (widget.filePath!.endsWith('.jpg') ||
                                      widget.filePath!.endsWith('.png'))
                              ? Image.file(
                                  File(widget.filePath!),
                                  fit: BoxFit.cover,
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.description_outlined,
                                      size: 48.sp,
                                      color: AppColors.instamartBlue,
                                    ),
                                    height8,
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.w),
                                      child: Text(
                                        widget.fileName,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.caption.copyWith(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                        Positioned(
                          top: 8.r,
                          right: 8.r,
                          child: Container(
                            padding: EdgeInsets.all(4.r),
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.delete_outline,
                              color: AppColors.errorRed,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    height12,
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.dividerGrey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        'Document 1 • 1 Page',
                        style: AppTextStyles.caption.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height16,
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Copies',
                              style: AppTextStyles.restaurantTitle,
                            ),
                            height2,
                            SizedBox(
                              width: 180.w,
                              child: Text(
                                widget.fileName,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.caption.copyWith(
                                  fontSize: 11.sp,
                                  color: AppColors.textHint,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderGrey),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, size: 16.sp),
                                onPressed: _copies > 1
                                    ? () => setState(() => _copies--)
                                    : null,
                              ),
                              Text(
                                '$_copies',
                                style: AppTextStyles.listTileTitle,
                              ),
                              IconButton(
                                icon: Icon(Icons.add, size: 16.sp),
                                onPressed: () => setState(() => _copies++),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    height20,
                    Text(
                      'Orientation',
                      style: AppTextStyles.inputLabel,
                    ),
                    height8,
                    Row(
                      children: [
                        Expanded(
                          child: buildOptionTile(
                            label: 'Portrait',
                            subLabel: '11" x 8" inch',
                            icon: Icons.crop_portrait,
                            isSelected: _orientation == 'Portrait',
                            onTap: () => setState(() => _orientation = 'Portrait'),
                          ),
                        ),
                        width12,
                        Expanded(
                          child: buildOptionTile(
                            label: 'Landscape',
                            subLabel: '8" x 11" inch',
                            icon: Icons.crop_landscape,
                            isSelected: _orientation == 'Landscape',
                            onTap: () => setState(() => _orientation = 'Landscape'),
                          ),
                        ),
                      ],
                    ),
                    height20,
                    Text(
                      'Color Type',
                      style: AppTextStyles.inputLabel,
                    ),
                    height8,
                    Row(
                      children: [
                        Expanded(
                          child: buildOptionTile(
                            label: 'B&W',
                            subLabel: '₹2/Page',
                            icon: Icons.monochrome_photos,
                            isSelected: _colorType == 'B&W',
                            onTap: () => setState(() => _colorType = 'B&W'),
                          ),
                        ),
                        width12,
                        Expanded(
                          child: buildOptionTile(
                            label: 'Color',
                            subLabel: '₹10/Page',
                            icon: Icons.palette_outlined,
                            isSelected: _colorType == 'Color',
                            onTap: () => setState(() => _colorType = 'Color'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              height90,
            ],
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1 Document, $_copies Page',
                    style: AppTextStyles.caption,
                  ),
                  Text(
                    '₹$_totalPrice',
                    style: AppTextStyles.screenTitle,
                  ),
                ],
              ),
              SizedBox(
                width: 160.w,
                height: 44.h,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Document Added to Print Cart!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.instamartBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Add to Cart',
                    style: AppTextStyles.buttonText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}