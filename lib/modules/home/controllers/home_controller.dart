import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>().obs;

  final mainFuture = Future.wait([]).obs;

  /*final newsData = PagesResponseData().obs;
  final newsFuture = Future.value(PagesResponseData()).obs;*/

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  updateMainFuture() async {
    mainFuture.value = Future.wait([
    ]);
    update(['main']);
  }

  assignFutures(List data) {
    final datas = [
    ];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }
}
