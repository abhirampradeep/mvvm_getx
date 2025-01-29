
import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes_name.dart';
import 'package:get_mvvm/view/splash_screen.dart';

class AppRoutes {

  static appRoutes () => [
    GetPage(name: RouteName.splashScreen, page: ()=> SplashScreen())
  ];
}