import 'controller/signup_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/core/utils/validation_functions.dart';
import 'package:skillchain3/widgets/custom_button.dart';
import 'package:skillchain3/widgets/custom_checkbox.dart';
import 'package:skillchain3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupUserScreen extends GetWidget<SignupUserController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 21, bottom: 21),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowbackfill,
                              height: getSize(61),
                              width: getSize(61),
                              alignment: Alignment.centerLeft,
                              margin: getMargin(left: 10)),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Text("msg_create_your_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold30)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.nameController,
                              hintText: "lbl_name".tr,
                              margin: getMargin(top: 52),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 33),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.phoneController,
                              hintText: "lbl_phone_no".tr,
                              margin: getMargin(top: 33),
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password2".tr,
                              margin: getMargin(top: 24),
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
                          Obx(() => CustomCheckbox(
                              width: getHorizontalSize(333),
                              text: "msg_i_have_read_the".tr,
                              iconSize: getHorizontalSize(24),
                              value: controller.isCheckbox.value,
                              margin: getMargin(left: 16, top: 46, right: 24),
                              fontStyle:
                                  CheckboxFontStyle.MontserratRomanRegular14,
                              isRightCheck: true,
                              onChange: (value) {
                                controller.isCheckbox.value = value;
                              })),
                          CustomButton(
                              height: getVerticalSize(63),
                              text: "lbl_sign_up".tr,
                              margin: getMargin(top: 39),
                              shape: ButtonShape.RoundedBorder31,
                              fontStyle:
                                  ButtonFontStyle.MontserratRomanRegular22,
                              onTap: () {
                                onTapSignup();
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapRowalreadyhavea();
                              },
                              child: Padding(
                                  padding: getPadding(top: 33, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text(
                                                "msg_already_have_account".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanRegular14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.7)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, bottom: 1),
                                            child: Text("lbl_login2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanRegular14RedA70001
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.7))))
                                      ])))
                        ])))));
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.mainScreen,
    );
  }

  onTapRowalreadyhavea() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
