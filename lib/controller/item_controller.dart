import 'package:get/get.dart';

class ItemController extends GetxController {
  RxString itemName = "".obs;

  @override
  void onInit() {
    print("===ITEM CONTROLLER INVOKED ===");
    super.onInit();
  }
}
