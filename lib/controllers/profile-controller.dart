import 'package:get/get.dart';
import 'package:getx_demo/models/users.dart';

class ProfileController extends GetxController {

  User _user;

  User get getUser => _user;

  @override
  void onInit() {
    super.onInit();
    this._user = Get.arguments as User;
  }
}