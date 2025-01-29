import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/res/colors/appColors.dart';

class Utils {

  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,backgroundColor: Appcolors.blackColour);
  }

  static snackBar(String title,String message){
    Get.snackbar(title, message,backgroundColor:Appcolors.blue,dismissDirection: DismissDirection.down);

  }
}