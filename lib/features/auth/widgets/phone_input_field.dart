import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import 'package:swiggy_clone/core/contsnts/sizedbox.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<bool>? onValidationChanged;
  final ValueChanged<CountryCode>? onCountryChanged;

  const PhoneInputField({
    super.key,
    required this.controller,
    this.onValidationChanged,
    this.onCountryChanged,
  });

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  String? _errorMessage;

  String? _validatePhoneNumber(String input) {
    final cleanInput = input.trim();

    if (cleanInput.isEmpty || cleanInput.length < 10) {
      return null;
    }

    // 1. Check for repeated digits (e.g. 0000000000, 1111111111)
    final isAllSameDigit = RegExp(r'^(\d)\1{9}$').hasMatch(cleanInput);
    if (isAllSameDigit) {
      return 'Please enter a valid mobile number';
    }

    // 2. Check for standard starting digit range (Indian mobile numbers start with 6, 7, 8, or 9)
    final isValidPrefix = RegExp(r'^[6-9]').hasMatch(cleanInput);
    if (!isValidPrefix) {
      return 'Mobile number must start with 6, 7, 8, or 9';
    }

    // 3. Final complete regex check
    final isValidMobile = RegExp(r'^[6-9]\d{9}$').hasMatch(cleanInput);
    if (!isValidMobile) {
      return 'Enter a valid 10-digit mobile number';
    }

    return null;
  }

  void _onTextChanged(String text) {
    final error = _validatePhoneNumber(text);
    final isValid = error == null && text.trim().length == 10;

    setState(() {
      _errorMessage = error;
    });

    if (widget.onValidationChanged != null) {
      widget.onValidationChanged!(isValid);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Country Code Picker Plugin Widget
            Theme(
              data: Theme.of(context).copyWith(
                dialogBackgroundColor: AppColors.white,
              ),
              child: CountryCodePicker(
                onChanged: widget.onCountryChanged,
                initialSelection: 'IN',
                favorite: const ['+91', 'IN'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
                padding: EdgeInsets.zero,
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
                dialogSize: Size(320.w, 450.h),
              ),
            ),

            width8,

            // Phone Input Field
            Expanded(
              child: TextField(
                controller: widget.controller,
                keyboardType: TextInputType.phone,
                onChanged: _onTextChanged,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: AppColors.textPrimary,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade400,
                    letterSpacing: 0,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: _errorMessage != null
                          ? Colors.red
                          : AppColors.dividerGrey,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: _errorMessage != null
                          ? Colors.red
                          : AppColors.primaryOrange,
                      width: 2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                ),
              ),
            ),
          ],
        ),

        // Inline Validation Error Message
        if (_errorMessage != null) ...[
          height8,
          Padding(
            padding: EdgeInsets.only(left: 100.w),
            child: Text(
              _errorMessage!,
              style: TextStyle(
                color: Colors.red.shade700,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ],
    );
  }
}