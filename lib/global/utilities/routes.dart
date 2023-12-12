
import 'package:drug_promation/global/bindings/home/home_binding.dart';
import 'package:drug_promation/global/middlewares/get_middleware.dart';
import 'package:drug_promation/modules/home/home_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/home',
    page: () => Home(),
    binding: HomeBinding(),
    middlewares: [
      GlobalGetMiddleware(),
    ],
  ),
];
