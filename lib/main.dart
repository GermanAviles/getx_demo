import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global-controller.dart';
// import 'package:getx_demo/pages/home-page.dart';
import 'package:getx_demo/pages/splash-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put( GlobalController() );
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}