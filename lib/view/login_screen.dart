import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/res/colors/appColors.dart';
import 'package:get_mvvm/utils/utils.dart';
import 'package:get_mvvm/view_model/controller/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  // final loginViewModel = Get.put(LoginViewModel());
  LoginViewModel loginViewModel = LoginViewModel();
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Appcolors.teal,
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: loginViewModel.emailController.value,
                focusNode: loginViewModel.emailfocusController.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Email', 'enter email');
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                      context,
                      loginViewModel.emailfocusController.value,
                      loginViewModel.passwordfocusController.value);
                },
                decoration: InputDecoration(
                    hintText: 'email id', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: loginViewModel.passwordController.value,
                focusNode: loginViewModel.passwordfocusController.value,
                decoration: InputDecoration(
                    hintText: 'password id', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print('hello');
                if (_formkey.currentState!.validate()) {
                  // loginViewModel.loginApi();
                  loginViewModel.loginApi();
                }
              },
              child: Container(
                color: Appcolors.teal,
                width: Get.width * 0.6,
                child: Text(
                  'login',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Appcolors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
