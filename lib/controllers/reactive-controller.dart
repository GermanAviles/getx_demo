import 'package:get/get.dart';

class ReactiveController extends GetxController {

  RxInt counter = 0.obs;
  RxString date = ''.obs;

  void increment() {
    counter.value++;
  }

  void getDate() {
    date.value = DateTime.now().toString();
  }

}