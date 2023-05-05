import '../controller/login_one_controller.dart';
import 'package:get/get.dart';

class LoginOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginOneController());
  }
}
