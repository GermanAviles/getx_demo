import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global-controller.dart';
import 'package:getx_demo/models/products.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // final controller = Get.find<GlobalController>();

    return GetBuilder<GlobalController>(
      // id: 'producto-favorito',
      builder: (_) {
        return ListView.builder(
          itemBuilder: (__, index) {
            final Product product = _.getProductos[ index ];
            return ListTile(
              title: Text( product.name ),
              subtitle: Text('\$ ${ product.price }'),
              trailing: IconButton(
                // icon: Icon(
                //   Icons.favorite,
                //   color: product.isFavorite ? Colors.red : Colors.grey[350],
                // ),
                icon: GetBuilder<GlobalController>(
                  id: 'producto-favorito',
                  builder: (_) {
                    return Icon(
                      Icons.favorite,
                      color: product.isFavorite ? Colors.red : Colors.grey[350],
                    );
                  }
                ),
                onPressed: (){
                  _.onFavorite(index, !product.isFavorite);
                }
              ),
            );
          },
          itemCount: _.getProductos.length,
        );
      }
    );
  }
}