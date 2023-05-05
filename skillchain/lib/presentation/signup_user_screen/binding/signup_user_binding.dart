import '../controller/signup_user_controller.dart';
import 'package:get/get.dart';

class SignupUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupUserController());
  }
}
