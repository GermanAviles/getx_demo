import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/profile-controller.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon( Icons.arrow_back ),
              onPressed: () => Get.back()
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${ _.getUser.firstName } ${ _.getUser.lastName }'),
                  SizedBox( height: 10 ),
                  CupertinoTextField(
                    onChanged: _.onInputTextChange,
                  ),
                  SizedBox( height: 10 ),
                  CupertinoButton(
                    child: Text('Aceptar'),
                    onPressed: _.goToBackWithData
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}