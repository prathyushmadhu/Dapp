import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/core/utils/validation_functions.dart';
import 'package:skillchain3/widgets/custom_button.dart';
import 'package:skillchain3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 18, right: 18),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 8, right: 34),
                                  child: Text("lbl_skillchain".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraBold50))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 15, top: 80),
                                  child: Text("lbl_username".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraBold18))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupthirteenController,
                              hintText: "lbl_type_user_id".tr,
                              margin: getMargin(top: 1, right: 7),
                              shape: TextFormFieldShape.RoundedBorder8,
                              fontStyle: TextFormFieldFontStyle.InterRegular20),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 16, top: 27),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraBold18))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordoneController,
                              hintText: "lbl_type_password".tr,
                              margin: getMargin(right: 7),
                              variant: TextFormFieldVariant.FillBluegray100,
                              shape: TextFormFieldShape.RoundedBorder8,
                              fontStyle: TextFormFieldFontStyle.InterRegular20,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(50),
                              width: getHorizontalSize(114),
                              text: "lbl_log_in".tr,
                              margin: getMargin(top: 50),
                              padding: ButtonPadding.PaddingAll12,
                              onTap: () {
                                onTapLogin();
                              }),
                          Padding(
                              padding: getPadding(top: 40),
                              child: Text("msg_dont_not_have_an".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraBold10)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtCreateanaccount();
                              },
                              child: Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("msg_create_an_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraBold16)))
                        ])))));
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.mainScreen,
    );
  }

  onTapTxtCreateanaccount() {
    Get.toNamed(
      AppRoutes.signupUserScreen,
    );
  }
}
