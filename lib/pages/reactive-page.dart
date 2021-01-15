import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/reactive-controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() {
                  print('[CONTADOR]');
                  return Text(
                    _.counter.value.toString(),
                    style: TextStyle( fontSize: 30 ),
                  );
                }),
                Obx(() {
                  print('[FECHA]');
                  return Text(
                    _.date.value.substring(0, 19),
                    style: TextStyle( fontSize: 30 ),
                  );
                }),
              ],
            )
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon( Icons.add ),
                onPressed: (){
                  _.increment();
                },
              ),
              FloatingActionButton(
                child: Icon( Icons.calendar_today ),
                onPressed: (){
                  _.getDate();
                },
              ),
            ],
          ),
        );
      }
    );
  }
}