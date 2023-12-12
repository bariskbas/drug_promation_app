
import 'package:drug_promation/global/controllers/initial_controller.dart';
import 'package:drug_promation/global/interceptors/back_interceptor.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InitialController(), permanent: true);
    Get.put(BackInterceptorController(), permanent: true);
  }
}
