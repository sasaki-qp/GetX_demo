import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/price_controller.dart';

class Price extends StatelessWidget {
  final PriceController priceController = Get.find<PriceController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PRICE OBX"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                return RaisedButton(
                  child: Text(priceController.price.value.toString()),
                  onPressed: () {
                    priceController.changePrice();
                  },
                );
              }),
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
