import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home-controller.dart';

class HomePage extends StatelessWidget {

  // final HomeController _controller =  HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: ( _ ) => Scaffold(
        body: Center(
          child: Text( _.counter.toString() )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed: (){
            _.increment();
          },
        ),
      )
    );
  }
}