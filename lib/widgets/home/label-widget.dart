import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home-controller.dart';

class LabelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'builderContador',
      builder: (_) => Text( _.getCounter.toString() )
    );
  }
}