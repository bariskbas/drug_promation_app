import 'package:get/get.dart';

class InitialController extends GetxController {
  final token = Rxn<String>();
  final refreshToken = Rxn<String>();
  final intialRoles = "".obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  @override
  void onReady() async {}

  /*getRoles() async {
    var userRole = await getUserRole();
    intialRoles.value = userRole.toString();
  }*/

  tokenInit() async {}

  updateMainFuture() async {
    //Get.offAllNamed('/home');
    Get.appUpdate();
  }
}
