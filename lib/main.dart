import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes.dart';
import 'package:get_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

