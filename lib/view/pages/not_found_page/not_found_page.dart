import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            const SizedBox(height: 24),
            const Text(
              '404',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Oops! The page you are looking for does not exist.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),

            TextButton.icon(
              onPressed: () {
                Get.back();
              },
              label: Text(
                'Go Back',
                style: AppFont.sb24.copyWith(color: AppTheme.lightPrimaryColor),
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
