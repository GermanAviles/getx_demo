import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_demo/models/products.dart';

class GlobalController extends GetxController{

  List<Product> _productos = [];
  Map<String, Product> _favorites = Map();

  Map<String, Product> get getFavorites => _favorites;
  List<Product> get getProductos => _productos;

  @override
  void onInit() {
    super.onInit();
    this._loadProducts();
  }

  Future<void>_loadProducts() async {
    final String productsString = await rootBundle.loadString('assets/productos.json');
    this._productos = ( jsonDecode( productsString ) as List).map(( producto ) => Product.fromJson( producto ) )
    .toList();
    update(['products']);
  }

  onFavorite( int index, bool isFavorite ) {

    Product product = this._productos[ index ];
    product.isFavorite = isFavorite;
    if ( isFavorite ) {
      this._favorites[ product.name ] = product;
    } else {
      this._favorites.remove( product.name );
    }

    update(['producto-favorito']);
  }

}