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
          body: Center(
            child: Text('${ _.getUser.firstName } ${ _.getUser.lastName }'),
          ),
        );
      }
    );
  }
}