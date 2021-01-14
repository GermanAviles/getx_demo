import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home-controller.dart';
import 'package:getx_demo/models/users.dart';

class HomeList extends StatelessWidget {

  const HomeList({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final User user = _.getUsers[index];
            return ListTile(
              title: Text( user.firstName ),
              subtitle: Text( user.email ),
            );
          },
          itemCount: _.getUsers.length,
        );
      }
    );
  }
}