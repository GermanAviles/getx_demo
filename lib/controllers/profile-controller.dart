import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/models/users.dart';

class ProfileController extends GetxController {

  User _user;

  User get getUser => _user;
  String _inputText = '';

  @override
  void onInit() {
    super.onInit();
    this._user = Get.arguments as User;
  }

  void onInputTextChange( String text ) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if ( this._inputText.trim().length > 0 ) {
      Get.back( result: this._inputText );
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext,
        builder: (__) => CupertinoActionSheet(
          title: Text('ERROR'),
          message: Text('Ingrese un valor válido.'),
          cancelButton: CupertinoActionSheetAction(
            child: Text('ACEPTAR'),
            onPressed: () => Get.back(),
          ),
        )
      );

      // Get.dialog( AlertDialog (
      //   title: Text('ERROR'),
      //   content: Text('Ingrese un valor válido.'),
      //   actions: [
      //     FlatButton(
      //       child: Text('ACEPTAR'),
      //       onPressed: (){
      //         Get.back();
      //       },
      //     )
      //   ],
      // ));
    }
  }
}