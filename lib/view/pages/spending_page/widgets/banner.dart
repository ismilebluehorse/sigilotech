import 'package:flutter/material.dart';

import '../../../themes/app_font.dart';
import '../../../themes/app_theme.dart';

class SpendingScreenBanner extends StatelessWidget {
  const SpendingScreenBanner({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Card(
        color: AppTheme.white,
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 2, right: 2, bottom: 4),
          child: Container(
            decoration: BoxDecoration(color: AppTheme.lightPrimaryColor),
            child: Center(child: Text(title, style: AppFont.n18)),
          ),
        ),
      ),
    );
  }
}
