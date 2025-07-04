import 'package:get/get.dart';
import 'package:sigilotech/view/pages/spending_page/spending_page.dart';
import 'package:sigilotech/view/pages/splash_screen/splash_screen.dart';

abstract class AppRoutes {
  static String splashScreenRoute = "/splash";

  static String homePageRoute = "/";
  static String finleyRoute = "/finley";
  static String spendingRoute = "/spending";
  static String coachRoute = "/coach";
  static String unknownRoute = "/unknown";

  static List<GetPage> getRouteList() {
    return [
      GetPage(
        // AuthRoleGUard()
        name: splashScreenRoute,
        transition: Transition.noTransition,
        page: () => const SplashScreen(),
      ),
      GetPage(name: spendingRoute, page: () => const SpendingPage()),
    ];
  }
}
