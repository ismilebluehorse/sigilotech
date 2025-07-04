import 'package:flutter/material.dart';
import 'package:sigilotech/view/themes/app_theme.dart';
import '../../widgets/appbar/appbar.dart';
import '../../widgets/bottom_bar/bottom_bar.dart';
import '../../widgets/white_space.dart';
import 'widgets/banner.dart';
import 'widgets/category_section.dart';

class SpendingPage extends StatelessWidget {
  const SpendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: BottomBar(),
        backgroundColor: AppTheme.grey7,
        appBar: CustomTopBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              DashboardBanner(title: "Keep this empty"),
              const WhiteSpace(height: 5),
              CategorySection(),
            ],
          ),
        ),
      ),
    );
  }
}
