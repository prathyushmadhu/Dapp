import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/login_one_screen/models/login_one_model.dart';
import 'package:flutter/material.dart';

class LoginOneController extends GetxController {
  TextEditingController groupfifteenController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LoginOneModel> loginOneModelObj = LoginOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupfifteenController.dispose();
    passwordoneController.dispose();
  }
}
