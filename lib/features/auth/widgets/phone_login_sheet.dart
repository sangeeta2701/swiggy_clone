import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';
import 'package:swiggy_clone/core/widgets/app_theme_button.dart';
import 'package:swiggy_clone/features/auth/widgets/phone_input_field.dart';
import 'package:swiggy_clone/features/auth/widgets/terms_legal_footer.dart';

class PhoneLoginSheet extends StatefulWidget {
  const PhoneLoginSheet({super.key});

  @override
  State<PhoneLoginSheet> createState() => _PhoneLoginSheetState();
}

class _PhoneLoginSheetState extends State<PhoneLoginSheet> {
  final TextEditingController _phoneController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. ClipRRect forces the white background to respect the top border radius at all times
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.r),
        topRight: Radius.circular(24.r),
      ),
      child: Container(
        color: AppColors.white,
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 24.h,
          // 2. Adjust padding dynamically for keyboard inset + navigation bar bottom inset
          bottom:
              MediaQuery.of(context).viewInsets.bottom +
              MediaQuery.of(context).padding.bottom +
              16.h,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              height4,
              Text(
                'Enter your phone number to proceed',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
              height30,

              // Phone Input Field
              PhoneInputField(
                controller: _phoneController,
                onValidationChanged: (isValid) {
                  setState(() {
                    _isButtonEnabled = isValid;
                  });
                },
                onCountryChanged: (CountryCode countryCode) {
                  // Access country dial code if needed
                },
              ),
              height30,

              // Continue Button
              AppThemeButton(
                text: 'CONTINUE',
                isEnabled: _isButtonEnabled,
                onPressed: () {
                  // Handle phone submission / OTP trigger
                },
              ),
              height20,

              // Legal Footer
              const TermsLegalFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
