import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/item_controller.dart';

class Item extends StatelessWidget {
  final ItemController itemController = Get.find<ItemController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("ITEM NO FENIX"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(itemController.itemName.value),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("戻る"),
                onPressed: () {
                  Get.back();
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("スタック全消し、戻る"),
                onPressed: () {
                  Get.offAllNamed("/home");
                },
              )
            ],
          )),
        ));
  }
}
