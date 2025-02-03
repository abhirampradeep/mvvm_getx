import 'package:flutter/material.dart';
import 'package:get_mvvm/data/app_exceptions.dart';
import 'package:get_mvvm/res/colors/appColors.dart';
import 'package:get_mvvm/utils/utils.dart';
import 'package:get_mvvm/view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    splashServices.isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.teal,
      body: Center(
        child: Text('Splash Screen'),
      ),
     
    );
  }
}
