import 'package:flutter/material.dart';
import 'package:swiggy_clone/core/contsnts/app_colors.dart';
import '../widgets/phone_login_header.dart';
import '../widgets/phone_login_sheet.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryOrange,
      body: const SafeArea(
        bottom: false,
        child: Column(
          children: [
            PhoneLoginHeader(),
            PhoneLoginSheet(),
          ],
        ),
      ),
    );
  }
}