import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.createAccountScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
