import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes_name.dart';
import 'package:get_mvvm/view/dashboard.dart';
import 'package:get_mvvm/view/login_screen.dart';
import 'package:get_mvvm/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
        GetPage(name: RouteName.loginScreen, page: () => LoginScreen()),
        GetPage(name: RouteName.dashboard, page: () => Dashboard(),transition: Transition.upToDown,transitionDuration: Duration(seconds: 3))
      ];
}
