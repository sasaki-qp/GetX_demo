import 'package:get/get.dart';
//import 'package:getx_demo/controller/item_controller.dart';
import 'package:getx_demo/controller/price_controller.dart';
import 'package:getx_demo/controller/store_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut(() => ItemController(), fenix: true);
    Get.lazyPut(() => PriceController(), fenix: true);
    Get.lazyPut(() => StoreController(), fenix: true);
  }
}
