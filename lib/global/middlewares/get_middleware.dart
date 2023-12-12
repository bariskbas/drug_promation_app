import 'package:get/get.dart';

class GlobalGetMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    if (Get.isDialogOpen ?? false) {
      Get.close(1);
    }

    Get.deleteAll();

    // Fluttertoast.cancel(); // doesnt work on web
    return page;
  }
}
