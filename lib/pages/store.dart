import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/store_controller.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("STORE GetBuilder"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<StoreController>(
                  id: "storeWidget",
                  builder: (storeController) {
                    return RaisedButton(
                      child: Text(storeController.storeName),
                      onPressed: () {
                        storeController.changeName();
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
