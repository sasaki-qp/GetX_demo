import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/bindings/home_binding.dart';
import 'package:getx_demo/pages/item.dart';
import 'package:getx_demo/pages/price.dart';
import 'package:getx_demo/pages/store.dart';
import 'package:getx_demo/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/item", page: () => Item()),
        GetPage(name: "/price", page: () => Price()),
        GetPage(name: "/store", page: () => Store())
      ],
      title: 'Getx Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
