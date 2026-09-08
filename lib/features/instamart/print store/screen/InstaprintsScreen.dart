import 'dart:async';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/features/instamart/print%20store/screen/customise_print_screen.dart';
import 'package:swiggy_clone/features/instamart/print%20store/widgets/_buildPromiseCard.dart';


class InstaprintsScreen extends StatefulWidget {
  const InstaprintsScreen({super.key});

  @override
  State<InstaprintsScreen> createState() => _InstaprintsScreenState();
}

class _InstaprintsScreenState extends State<InstaprintsScreen> {
  bool _isUploading = false;

  Future<void> _pickAndUploadDocument() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'jpeg', 'png'],
        allowMultiple: false,
      );

      if (result != null && result.files.isNotEmpty && mounted) {
        final PlatformFile pickedFile = result.files.first;
        _showUploadProgressBottomSheet(pickedFile);
      }
    } catch (e) {
      debugPrint('Error picking file: $e');
    }
  }

  void _showUploadProgressBottomSheet(PlatformFile file) {
    setState(() => _isUploading = true);

    double progress = 0.0;
    Timer? timer;

    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (bottomSheetContext) {
        return StatefulBuilder(
          builder: (context, setBottomSheetState) {
            timer ??= Timer.periodic(const Duration(milliseconds: 150), (t) {
              if (progress >= 1.0) {
                t.cancel();
                if (mounted) {
                  Navigator.pop(bottomSheetContext);
                  setState(() => _isUploading = false);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomisePrintScreen(
                        filePath: file.path,
                        fileName: file.name,
                      ),
                    ),
                  );
                }
              } else {
                setBottomSheetState(() {
                  progress += 0.1;
                });
              }
            });

            return Container(
              padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: AppColors.dividerGrey,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                  height20,
                  Text(
                    'Uploading Document',
                    style: AppTextStyles.instamartSectionHeader.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                  height4,
                  Text(
                    '1 document',
                    style: AppTextStyles.caption,
                  ),
                  height24,
                  Icon(
                    Icons.description_outlined,
                    size: 64.sp,
                    color: AppColors.instamartBlue,
                  ),
                  height24,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 6.h,
                      backgroundColor: AppColors.dividerGrey,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.instamartBlue,
                      ),
                    ),
                  ),
                  height16,
                  Text(
                    'Files will be auto-deleted',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textHint,
                    ),
                  ),
                  height20,
                  TextButton(
                    onPressed: () {
                      timer?.cancel();
                      Navigator.pop(bottomSheetContext);
                      setState(() => _isUploading = false);
                    },
                    child: Text(
                      'Cancel Upload',
                      style: AppTextStyles.buttonText.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.instamartBlue,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instamartBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white, size: 24.sp),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.white, size: 22.sp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share_outlined, color: AppColors.white, size: 22.sp),
            onPressed: () {},
          ),
          width8,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            height12,
            Text(
              'SAFE ★ SECURE ★ INSTANT',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.white.withOpacity(0.8),
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
            height4,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Instaprints',
                  style: AppTextStyles.heroTitle,
                ),
                width8,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: AppColors.instamartBadgeYellow,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    'in 16 mins',
                    style: AppTextStyles.caption.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            height24,
            Container(
              height: 180.h,
              width: 260.w,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Center(
                child: Icon(
                  Icons.print_rounded,
                  size: 100.sp,
                  color: AppColors.white,
                ),
              ),
            ),
            height24,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Get your first print ',
                          style: AppTextStyles.screenTitle,
                        ),
                        TextSpan(
                          text: 'FREE',
                          style: AppTextStyles.screenTitle.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.instamartBadgeYellow,
                            decorationThickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height12,
                  Text(
                    '• A4 size prints\n• 75 GSM paper quality',
                    style: AppTextStyles.subtitle.copyWith(
                      height: 1.5,
                    ),
                  ),
                  height20,
                  SizedBox(
                    width: double.infinity,
                    height: 46.h,
                    child: ElevatedButton(
                      onPressed: _isUploading ? null : _pickAndUploadDocument,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.instamartBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Upload Document',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ),
                  height12,
                  Center(
                    child: Text(
                      '*Offer applies to 10 pages of BW or ₹30 max discount on color',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.caption.copyWith(
                        fontSize: 10.sp,
                        color: AppColors.textHint,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            height24,
            // 1. Updated Section Layout in build():
Text(
  'WE PROMISE',
  style: AppTextStyles.caption.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.1,
  ),
),
height24, // <--- Increased height to clear 'WE PROMISE' text
Padding(
  padding: EdgeInsets.symmetric(horizontal: 16.w),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: buildPromiseCard(
          icon: Icons.verified_user_outlined,
          title: 'Safety',
          desc: 'Documents are deleted once printed!',
        ),
      ),
      SizedBox(width: 12.w), // <--- Explicit gap between expanded items
      Expanded(
        child: buildPromiseCard(
          icon: Icons.lock_outline,
          title: 'Security',
          desc: 'Prints are sealed before delivery',
        ),
      ),
    ],
  ),
),
height30,
            height30,
          ],
        ),
      ),
    );
  }

  
}