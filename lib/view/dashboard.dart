import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/view_model/controller/login_view_model.dart';
import 'package:get_mvvm/view_model/controller/user_view_model.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
   String emailvalue = Get.find<UserController>().email.value;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('helooooooo ${emailvalue}}'),
      ),
    );
  }
}
