import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/core/widgets/app_theme_button.dart';
import 'package:swiggy_clone/features/auth/widgets/otp_input_fields.dart';
import 'package:swiggy_clone/features/home/screen/main_container_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpVerificationScreen({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String _otpCode = '';
  int _timerSeconds = 22;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  void _startResendTimer() {
    setState(() => _timerSeconds = 22);
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timerSeconds > 0) {
        setState(() => _timerSeconds--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _formattedTimer {
    final seconds = _timerSeconds.toString().padLeft(2, '0');
    return '00:$seconds';
  }

  bool get _isOtpValid => _otpCode.trim().length == 6;

  bool _isLoading = false;

void _verifyOtp() async {
  if (!_isOtpValid || _isLoading) return;

  setState(() {
    _isLoading = true;
  });

  try {
    // Simulate API or Firebase OTP verification delay
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) return;

    // Navigate to Home and clear auth stack
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const MainContainerScreen(),
      ),
      (route) => false,
    );
  } catch (e) {
    // Handle verification error (e.g., show a SnackBar)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Invalid OTP. Please try again.')),
    );
  } finally {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 1. Top Header Banner
            Container(
              width: double.infinity,
              color: AppColors.headerBackground,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 12.h,
                bottom: 20.h,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Back Arrow
                      GestureDetector(
                        onTap: () => Navigator.maybePop(context),
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.textPrimary,
                          size: 24.sp,
                        ),
                      ),
                      height16,

                      // Title & Subtitle
                      Text('Verify Details', style: AppTextStyles.screenTitle),
                      height4,
                      Text(
                        'OTP sent to ${widget.phoneNumber}',
                        style: AppTextStyles.subtitle,
                      ),
                    ],
                  ),

                  // Phone Vector Graphic Illustration (Top Right)
                  Positioned(
                    right: 12.w,
                    bottom: 0,
                    child: Container(
                      width: 54.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffD6E2F0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.r),
                          topRight: Radius.circular(8.r),
                        ),
                        border: Border.all(
                          color: const Color(0xffB4C7DE),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'x x x x x x',
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2. Body / OTP Entry Form
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter OTP', style: AppTextStyles.inputLabel),
                    height12,

                    // OTP Underline Custom Inputs
                    OtpInputFields(
                      onOtpChanged: (code) {
                        setState(() {
                          _otpCode = code;
                        });
                      },
                    ),
                    height24,

                    // Resend OTP Countdown Text
                    GestureDetector(
                      onTap: _timerSeconds == 0 ? _startResendTimer : null,
                      child: Text(
                        _timerSeconds > 0
                            ? "Didn't receive the OTP? Retry in $_formattedTimer"
                            : "Didn't receive the OTP? Retry Now",
                        style: AppTextStyles.caption.copyWith(
                          color: _timerSeconds == 0
                              ? AppColors.primaryOrange
                              : AppColors.textSecondary,
                          fontWeight: _timerSeconds == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    height30,

                   //Enter OTP button
                    AppThemeButton(
                      text: 'ENTER OTP',
                      isEnabled: _isOtpValid,
                      onPressed: _verifyOtp,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}