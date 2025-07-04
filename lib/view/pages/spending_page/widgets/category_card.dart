import 'package:flutter/material.dart';
import 'package:sigilotech/view/themes/app_font.dart';
import 'package:sigilotech/view/themes/app_theme.dart';
import '../../../widgets/white_space.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.percentage,
    required this.progressColor,
    required this.title,
    required this.spendRemaining,
    required this.icon,
  });
  final double percentage;
  final String title;
  final double spendRemaining;
  final Color progressColor;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppFont.n12.copyWith(color: AppTheme.grey2),
          textAlign: TextAlign.center,
        ),
        WhiteSpace(height: 6),
        Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: const Duration(milliseconds: 600),
              builder:
                  (context, value, child) => SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(
                      value: value,
                      strokeWidth: 6,
                      backgroundColor: AppTheme.grey8,
                      valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                    ),
                  ),
            ),
            icon,
          ],
        ),
        WhiteSpace(height: 3),
        Text(
          spendRemaining < 0
              ? '\$${spendRemaining.abs().toStringAsFixed(2)}'
              : '\$${spendRemaining.toStringAsFixed(2)}',
          style: AppFont.n12.copyWith(color: AppTheme.grey2),
        ),
        WhiteSpace(height: 1),
        Text(
          spendRemaining < 0 ? 'over limit' : 'left',
          style: AppFont.n12.copyWith(color: AppTheme.grey2),
        ),
      ],
    );
  }
}
