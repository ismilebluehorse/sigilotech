import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sigilotech/view/routes/app_routes.dart';
import 'package:sigilotech/view/themes/app_font.dart';
import 'package:sigilotech/view/themes/app_theme.dart';
import 'package:sigilotech/view/widgets/white_space.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  final List<Map<String, dynamic>> bottomMenu = [
    {
      'title': 'Home',
      'icon': Icons.home_outlined,
      'route': AppRoutes.homePageRoute,
    },

    {
      'title': 'Finley AI',
      'icon': Icons.question_answer_outlined,
      'route': AppRoutes.finleyRoute,
    },
    {
      'title': 'Spending',
      'icon': Icons.credit_card,
      'route': AppRoutes.spendingRoute,
    },
    {
      'title': 'Meet Coach',
      'icon': Icons.supervisor_account_outlined,
      'route': AppRoutes.coachRoute,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: AppTheme.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            bottomMenu
                .map(
                  (item) => InkWell(
                    onTap: () {
                      Get.toNamed(item['route']);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item['icon'],
                          color:
                              Get.currentRoute == item['route']
                                  ? Colors.green
                                  : Colors.black54,
                        ),
                        const WhiteSpace(height: 2),
                        Text(
                          item['title'],
                          style: AppFont.sb14.copyWith(
                            fontSize: 10,
                            color:
                                Get.currentRoute == item['route']
                                    ? Colors.green
                                    : Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
