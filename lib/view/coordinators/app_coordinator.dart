import 'package:get/get.dart';
import 'package:sigilotech/view/routes/app_routes.dart';

class AppViewCoordinator {
  void navigateToSpending() {
    Get.offNamed(AppRoutes.spendingRoute);
  }
}
