import '../main_screen/widgets/main_item_widget.dart';
import 'controller/main_controller.dart';
import 'models/main_item_model.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/widgets/app_bar/appbar_image.dart';
import 'package:skillchain3/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MainScreen extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            73,
          ),
          leadingWidth: 54,
          leading: AppbarImage(
            height: getSize(
              48,
            ),
            width: getSize(
              48,
            ),
            imagePath: ImageConstant.imgMenufill0wght,
            margin: getMargin(
              left: 6,
              top: 4,
              bottom: 4,
            ),
          ),
          title: Container(
            margin: getMargin(
              left: 13,
            ),
            padding: getPadding(
              left: 20,
              top: 4,
              right: 20,
              bottom: 4,
            ),
            decoration: AppDecoration.fillGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 3,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_search_uid".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterLight18,
                  ),
                ),
                AppbarImage(
                  height: getSize(
                    27,
                  ),
                  width: getSize(
                    27,
                  ),
                  imagePath: ImageConstant.imgImage2,
                  margin: getMargin(
                    left: 113,
                    top: 1,
                    right: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 7,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle227,
                height: getVerticalSize(
                  8,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 8,
                ),
                child: Text(
                  "lbl_user_details".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterExtraBold20,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 15,
                    top: 33,
                    right: 22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          100,
                        ),
                        width: getSize(
                          100,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  97,
                                ),
                                width: getHorizontalSize(
                                  95,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blueGray100,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img16680155503691,
                              height: getSize(
                                100,
                              ),
                              width: getSize(
                                100,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 22,
                          bottom: 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_nandan_kumar".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular20,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Text(
                                "msg_nandhakishore_gmail_com".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular17,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_9523075149".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle226,
                height: getVerticalSize(
                  9,
                ),
                width: getHorizontalSize(
                  375,
                ),
                margin: getMargin(
                  top: 15,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 9,
                ),
                child: Text(
                  "lbl_work_experience".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold20,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 15,
                  top: 8,
                  right: 50,
                ),
                padding: getPadding(
                  left: 22,
                  top: 4,
                  right: 22,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillGray300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "lbl_search_keywords".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterLight18,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: getVerticalSize(
                        27,
                      ),
                      width: getHorizontalSize(
                        30,
                      ),
                      margin: getMargin(
                        top: 1,
                        right: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Divider(
                  height: getVerticalSize(
                    2,
                  ),
                  thickness: getVerticalSize(
                    2,
                  ),
                  color: ColorConstant.blueGray100,
                  indent: getHorizontalSize(
                    6,
                  ),
                  endIndent: getHorizontalSize(
                    5,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 8,
                  right: 35,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: getPadding(
                          top: 11.5,
                          bottom: 11.5,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            364,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              2,
                            ),
                            thickness: getVerticalSize(
                              2,
                            ),
                            color: ColorConstant.blueGray100,
                          ),
                        ),
                      );
                    },
                    itemCount:
                        controller.mainModelObj.value.mainItemList.value.length,
                    itemBuilder: (context, index) {
                      MainItemModel model = controller
                          .mainModelObj.value.mainItemList.value[index];
                      return MainItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                  bottom: 5,
                ),
                child: Divider(
                  height: getVerticalSize(
                    2,
                  ),
                  thickness: getVerticalSize(
                    2,
                  ),
                  color: ColorConstant.blueGray100,
                  indent: getHorizontalSize(
                    6,
                  ),
                  endIndent: getHorizontalSize(
                    5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
