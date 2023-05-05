import 'package:get/get.dart';
import 'main_item_model.dart';

class MainModel {
  Rx<List<MainItemModel>> mainItemList =
      Rx(List.generate(2, (index) => MainItemModel()));
}
