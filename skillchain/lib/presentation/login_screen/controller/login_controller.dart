import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController groupthirteenController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirteenController.dispose();
    passwordoneController.dispose();
  }
}
