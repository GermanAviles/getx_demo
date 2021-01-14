import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home-controller.dart';
import 'package:getx_demo/widgets/home/label-widget.dart';

class HomePage extends StatelessWidget {

  // final HomeController _controller =  HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: ( vController ) {
        print('renderizando el widget completo DE HOME');
        return Scaffold(
          body: Center(
            child: LabelWidget()
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon( Icons.add ),
            onPressed: (){
              vController.increment();
            },
          ),
        );
      }
    );
  }
}