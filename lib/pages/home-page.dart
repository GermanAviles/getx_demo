import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global-controller.dart';
import 'package:getx_demo/controllers/home-controller.dart';
import 'package:getx_demo/widgets/genericos/product-list.dart';
// import 'package:getx_demo/widgets/home/home-list.dart';
// import 'package:getx_demo/widgets/home/label-widget.dart';

class HomePage extends StatelessWidget {

  // final HomeController _controller =  HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: ( vController ) {
        print('renderizando el widget completo DE HOME');
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: (){}
            ),
            title: Text('Productos'),
            actions: [
              GetBuilder<GlobalController>(
                id: 'producto-favorito',
                builder: (_) => FlatButton(
                  child: Text('Favoritos (${ _.getFavorites.length })', style: TextStyle( color: Colors.white ),),
                  onPressed: null
                )
              )
            ],
          ),
          // body: HomeList(),
          body: ProductList(),
          // floatingActionButton: FloatingActionButton(
          //   child: Icon( Icons.add ),
          //   onPressed: (){
          //     vController.increment();
          //   },
          // ),
        );
      }
    );
  }
}