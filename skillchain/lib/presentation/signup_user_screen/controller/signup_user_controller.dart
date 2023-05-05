import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/signup_user_screen/models/signup_user_model.dart';
import 'package:flutter/material.dart';

class SignupUserController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupUserModel> signupUserModelObj = SignupUserModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
