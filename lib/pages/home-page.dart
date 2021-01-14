import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home-controller.dart';

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
            child: GetBuilder<HomeController>(
              id: 'builderContador',
              builder: (_) => Text( vController.getCounter.toString() )
            )
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