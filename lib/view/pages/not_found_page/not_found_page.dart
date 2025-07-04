import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigilotech/view/widgets/white_space.dart';

import '../../themes/app_font.dart';
import '../../themes/app_theme.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 80, color: AppTheme.red),
            const WhiteSpace(height: 24),
            const Text(
              '404',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const WhiteSpace(height: 8),
            Text(
              'Oops! The page you are looking for does not exist.',
              textAlign: TextAlign.center,
              style: AppFont.n12.copyWith(color: AppTheme.grey2),
            ),

            TextButton.icon(
              onPressed: () {
                Get.back();
              },
              label: Text(
                'Go Back',
                style: AppFont.sb20.copyWith(color: AppTheme.lightPrimaryColor),
              ),
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: AppTheme.lightPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
