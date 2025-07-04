import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sigilotech/view/routes/app_routes.dart';
import 'package:sigilotech/view/themes/app_theme.dart';

import 'view/pages/not_found_page/not_found_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spent Tracker',
      defaultTransition: Transition.noTransition,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.splashScreenRoute,
      getPages: AppRoutes.getRouteList(),
      unknownRoute: GetPage(
        name: AppRoutes.unknownRoute,
        page: () => const NotFoundPage(), // A page to handle unknown routes
      ),
    );
  }
}
