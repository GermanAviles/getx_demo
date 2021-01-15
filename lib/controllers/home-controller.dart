import 'package:get/get.dart';
import 'package:getx_demo/api/users-api.dart';
import 'package:getx_demo/models/users.dart';
import 'package:getx_demo/pages/profile-page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get getCounter => _counter;
  List<User> get getUsers => _users;
  bool get getLoading => _loading;

  @override
  void onInit() {
    super.onInit();
    print('HomeController en memoria - Iniciado.');
  }

  @override
  void onReady() {
    super.onReady();
    print('HomeController renderizado - Listo.');
    this.loadUsers();
  }

  @override
  void onClose() {
    super.onClose();
    print('HomeController eliminandose de memoria.');
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }

  void increment() {
    this._counter++;
    // update( idController, condicionParaRenderizar )
    update(['builderContador'], this._counter > 1);
  }

  showUserProfile(User user) {
    Get.to( ProfilePage(), arguments: user );
  }
}