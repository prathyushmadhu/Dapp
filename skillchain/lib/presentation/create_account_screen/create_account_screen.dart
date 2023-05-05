import 'controller/create_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/widgets/custom_button.dart';

class CreateAccountScreen extends GetWidget<CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 49, top: 144, right: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_skillchain".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterExtraBold50RedA70001),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 90),
                              child: Text("msg_choose_your_role".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraBold30))),
                      CustomButton(
                          height: getVerticalSize(64),
                          text: "lbl_employer".tr,
                          margin: getMargin(left: 22, top: 32, right: 9),
                          variant: ButtonVariant.OutlineBlack9003f,
                          shape: ButtonShape.RoundedBorder14,
                          fontStyle: ButtonFontStyle.InterExtraBold20Black900,
                          onTap: () {
                            onTapEmployer();
                          }),
                      CustomButton(
                          height: getVerticalSize(64),
                          text: "lbl_job_seeker".tr,
                          margin: getMargin(
                              left: 22, top: 40, right: 10, bottom: 5),
                          variant: ButtonVariant.OutlineBlack9003f,
                          shape: ButtonShape.RoundedBorder14,
                          fontStyle: ButtonFontStyle.InterExtraBold20Black900,
                          onTap: () {
                            onTapJobseeker();
                          })
                    ]))));
  }

  onTapEmployer() {
    Get.toNamed(
      AppRoutes.loginOneScreen,
    );
  }

  onTapJobseeker() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
