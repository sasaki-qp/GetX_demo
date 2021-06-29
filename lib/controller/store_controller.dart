import 'package:get/get.dart';

class StoreController extends GetxController {
  String storeName = "STORE";

  @override
  void onInit() {
    print("=== STORE CONTROLLER INVOKED ===");
    super.onInit();
  }

  void changeName() {
    storeName = "name changed";
    print("=== STORE NAME CHANGED ===$storeName");
    update(["storeWidget"]);
  }
}
