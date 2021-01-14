import 'package:get/get.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get getCounter => _counter;

  @override
  void onInit() {
    super.onInit();
    print('HomeController en memoria - Iniciado.');
  }

  @override
  void onReady() {
    super.onReady();
    print('HomeController renderizado - Listo.');
  }

  @override
  void onClose() {
    super.onClose();
    print('HomeController eliminandose de memoria.');
  }

  void increment() {
    this._counter++;
    update(['builderContador']);
  }
}