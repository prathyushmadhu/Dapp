import 'package:skillchain3/core/app_export.dart';
import 'package:skillchain3/presentation/create_account_screen/models/create_account_model.dart';

class CreateAccountController extends GetxController {
  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
