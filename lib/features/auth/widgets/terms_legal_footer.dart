import 'package:flutter/material.dart';
import 'package:swiggy_clone/core/contsnts/app_text_styles.dart';

class TermsLegalFooter extends StatelessWidget {
  const TermsLegalFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyles.caption,
          children: [
            const TextSpan(text: 'By clicking, I accept the '),
            TextSpan(
              text: 'Privacy policy',
              style: AppTextStyles.captionLink,
            ),
            const TextSpan(text: ',\n'),
            TextSpan(
              text: 'Swiggy terms of use',
              style: AppTextStyles.captionLink,
            ),
            const TextSpan(text: ' and '),
            TextSpan(
              text: 'Instamart terms of use',
              style: AppTextStyles.captionLink,
            ),
          ],
        ),
      ),
    );
  }
}