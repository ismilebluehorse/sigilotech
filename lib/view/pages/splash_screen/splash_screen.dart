import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigilotech/view/themes/app_theme.dart';

import '../../coordinators/app_coordinator.dart';
import '../../themes/app_font.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      AppViewCoordinator().navigateToSpending();
    });
    return Scaffold(
      backgroundColor: AppTheme.lightPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Finley',
            textAlign: TextAlign.center,
            style: AppFont.sb24.copyWith(
              fontSize: 55,
              color: AppTheme.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Text(
              'Spending App',
              textAlign: TextAlign.center,
              style: AppFont.n12.copyWith(fontSize: 18, color: AppTheme.white),
            ),
          ),
        ],
      ),
    );
  }
}
