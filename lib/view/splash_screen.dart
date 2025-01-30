import 'package:flutter/material.dart';
import 'package:get_mvvm/data/app_exceptions.dart';
import 'package:get_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('helloooo'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Utils.snackBar('hello', 'come onn')),
    );
  }
}
