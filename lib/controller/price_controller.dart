import 'package:get/get.dart';

class PriceController extends GetxController {
  RxInt price = 500.obs;

  @override
  void onInit() {
    print("=== PRICE CONTROLLER INVOKED ===");
    super.onInit();
  }

  void changePrice() {
    price.value = 1000;
    print("=== PRICE VALUE CHANGED ===${price.value}");
  }
}
