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
            child: Obx( () {
              return ListView(
                children: _.mapItems.values.map((e) => ListTile(
                  title: Text(e),
                  trailing: IconButton(
                    icon: Icon( Icons.delete, color: Colors.red[300] ),
                    onPressed: () {
                      _.removeMapItem( e );
                    }
                  ),
                )).toList(),
              );
              // return ListView.builder(
              //   itemCount: _.items.length,
              //   itemBuilder: (__, index){
              //     final String text = _.items[ index ];
              //     return ListTile(
              //       title: Text( text.substring(0, 19) ),
              //       trailing: IconButton(
              //         icon: Icon( Icons.delete, color: Colors.red[300] ),
              //         onPressed: () {
              //           _.removeItem(index);
              //         }
              //       ),
              //     );
              //   },
              // );
            }),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Obx(() {
            //       print('[CONTADOR]');
            //       return Text(
            //         _.counter.value.toString(),
            //         style: TextStyle( fontSize: 30 ),
            //       );
            //     }),
            //     Obx(() {
            //       print('[FECHA]');
            //       return Text(
            //         _.date.value.substring(0, 19),
            //         style: TextStyle( fontSize: 30 ),
            //       );
            //     }),
            //   ],
            // )
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon( Icons.add ),
                onPressed: (){
                  _.addMapItem();
                  // _.addItem( DateTime.now().toString() );
                  // _.increment();
                },
              ),
              // FloatingActionButton(
              //   child: Icon( Icons.calendar_today ),
              //   onPressed: (){
              //     _.getDate();
              //   },
              // ),
            ],
          ),
        );
      }
    );
  }
}