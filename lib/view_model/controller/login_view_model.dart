import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes_name.dart';
import 'package:get_mvvm/respository/login_repo/login_repo.dart';
import 'package:get_mvvm/utils/utils.dart';
import 'package:get_mvvm/view_model/controller/user_view_model.dart';

class LoginViewModel extends GetxController {
  // var email = ''.obs; 
  final _api = LoginRepo();

  final emailController = TextEditingController().obs;
  final emailfocusController = FocusNode().obs;

  final passwordController = TextEditingController().obs;
  final passwordfocusController = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;

    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };

    print(data);
       Get.find<UserController>().email.value = emailController.value.text;

    _api.loginApi(data).then((value) {
      loading.value = false;

      Utils.snackBar('Login', 'Login Successful');
      Get.toNamed(RouteName.dashboard);
    }).onError((error, StackTrace) {
      print('hiii hiiii hii');
      print(error.toString());
      print(error.toString());
      print('okkkk');
      loading.value = false;
      Utils.snackBar('Error' 'aaaa', error.toString());
    });
  }
}
