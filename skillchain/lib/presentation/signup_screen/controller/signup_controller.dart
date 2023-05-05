import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameoneController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameoneController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
