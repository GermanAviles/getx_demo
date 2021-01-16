import 'package:get/get.dart';

class ReactiveController extends GetxController {

  RxInt counter = 0.obs;
  RxString date = ''.obs;

  RxList<String> items = List<String>().obs;
  RxMap<String, dynamic> mapItems = Map<String, dynamic>().obs;

  void increment() {
    counter.value++;
  }

  void getDate() {
    date.value = DateTime.now().toString();
  }

  void addItem( String item ) {
    items.add( item );
  }

  void removeItem( index ) {
    items.removeAt( index );
  }

  void addMapItem() {
    // mapItems.assign(DateTime.now().toString().substring(0, 19), DateTime.now().toString().substring(0, 19));
    final String key = DateTime.now().toString().substring(0, 19);
    mapItems.addIf(true, key, key);
  }

  void removeMapItem( index ) {
    mapItems.remove( index );
  }

}