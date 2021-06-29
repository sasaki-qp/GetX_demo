import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/item_controller.dart';

class Home extends StatelessWidget {
  final ItemController itemController =
      Get.put(ItemController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HOME"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("item page Get.put"),
                onPressed: () {
                  Get.toNamed("/item");
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("store page GetBuilder"),
                onPressed: () {
                  Get.toNamed("/store");
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("price page Obx"),
                onPressed: () {
                  Get.toNamed("/price");
                },
              ),
            ],
          )),
        ));
  }
}
