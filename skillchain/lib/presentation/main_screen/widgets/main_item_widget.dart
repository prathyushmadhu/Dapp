import '../controller/main_controller.dart';
import '../models/main_item_model.dart';
import 'package:flutter/material.dart';
import 'package:skillchain3/core/app_export.dart';

// ignore: must_be_immutable
class MainItemWidget extends StatelessWidget {
  MainItemWidget(this.mainItemModelObj);

  MainItemModel mainItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.img16028594108151,
          height: getVerticalSize(
            60,
          ),
          width: getHorizontalSize(
            57,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 9,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  mainItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
              ),
              Obx(
                () => Text(
                  mainItemModelObj.organizationTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
              Obx(
                () => Text(
                  mainItemModelObj.durationTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
