import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPolygon2,
                                height: getVerticalSize(217),
                                width: getHorizontalSize(230),
                                alignment: Alignment.centerRight),
                            Padding(
                                padding: getPadding(top: 65),
                                child: Text("lbl_skillchain".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraBold54)),
                            Container(
                                height: getVerticalSize(452),
                                width: double.maxFinite,
                                margin: getMargin(top: 206),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: getVerticalSize(148),
                                          width: getHorizontalSize(375),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorPink900,
                                          height: getVerticalSize(148),
                                          width: getHorizontalSize(375),
                                          alignment: Alignment.bottomCenter,
                                          margin: getMargin(bottom: 137)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPolygon4,
                                          height: getVerticalSize(370),
                                          width: getHorizontalSize(120),
                                          alignment: Alignment.topLeft),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPolygon4RedA700,
                                          height: getVerticalSize(422),
                                          width: getHorizontalSize(149),
                                          alignment: Alignment.bottomRight)
                                    ]))
                          ])))
                    ]))));
  }
}
