import 'package:get/get.dart';

class ReactiveController extends GetxController {

  RxInt counter = 0.obs;
  RxString date = ''.obs;

  RxList<String> items = List<String>().obs;

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

}