
import 'package:drug_promation/modules/qr/controllers/qr_controller.dart';
import 'package:get/get.dart';

class QrBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrController>(() => QrController(), fenix: true);
  }
}
