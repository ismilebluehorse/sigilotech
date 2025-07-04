import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/spending_controller.dart';
import '../../../themes/app_font.dart';
import '../../../themes/app_theme.dart';
import '../../../widgets/white_space.dart';
import 'category_card.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});
  final controller = Get.put(SpendingController());
  IconData getCategoryIcon(String categoryKey) {
    switch (categoryKey) {
      case 'HOUSING_AND_UTILITIES':
        return Icons.house;
      case 'EDUCATION_AND_CHILDCARE':
        return Icons.school;
      case 'TRANSPORTATION':
        return Icons.directions_car;
      case 'HEALTHCARE_AND_MEDICAL':
        return Icons.medical_services;
      case 'INSURANCE':
        return Icons.verified_user;
      case 'LOANS_AND_CREDIT_CARDS':
        return Icons.credit_card;
      case 'GROCERIES':
        return Icons.shopping_cart;
      case 'ENTERTAINMENT':
        return Icons.celebration;
      case 'DINING_OUT':
        return Icons.restaurant;
      case 'SHOPPING':
        return Icons.shopping_bag;
      case 'MISCELLANEOUS':
        return Icons.settings;
      case 'TRAVEL':
        return Icons.flight;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;
    return Expanded(
      child: Card(
        color: AppTheme.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              WhiteSpace(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Spending by category", style: AppFont.sb24),
                ),
              ),
              const WhiteSpace(height: 12),
              Expanded(
                child: Obx(
                  () => GridView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isTablet ? 6 : 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / 1.8,
                    ),
                    itemCount: controller.spendingData.length,
                    itemBuilder: (context, index) {
                      final item = controller.spendingData[index];
                      final isOver = item.spendStatus == 'OVER_SPENT';
                      final isThreshold =
                          item.spendStatus == 'OVER_THRESHOLD_SPENT';
                      final percentage = min(
                        item.spendPercentage! / 100.0,
                        1.0,
                      );

                      Color progressColor =
                          isOver
                              ? AppTheme.red
                              : isThreshold
                              ? AppTheme.yellow
                              : AppTheme.green;

                      return CategoryCard(
                        percentage: percentage,
                        progressColor: progressColor,
                        title: item.finleyCategoryName!,
                        spendRemaining: item.spendRemaining!,
                        icon: Icon(
                          getCategoryIcon(item.finleyCategory!),
                          size: 24,
                          color: Colors.black54,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
