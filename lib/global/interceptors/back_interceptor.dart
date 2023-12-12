import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:get/get.dart';

class BackInterceptorController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    BackButtonInterceptor.add(myInterceptor);
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    //Get.offNamed(Get.previousRoute);
    Get.back(
        closeOverlays:
            true); // closed because can't access old state on page thus pages give null error.
    return true;
  }
}
