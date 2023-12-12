import 'dart:io';

import 'package:drug_promation/global/widgets/dialog_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QrController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>().obs;
  final lastVideoId = "".obs;
  final mainFuture = Future.wait([]).obs;

  /*final newsData = PagesResponseData().obs;
  final newsFuture = Future.value(PagesResponseData()).obs;*/

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  updateMainFuture() async {
    mainFuture.value = Future.wait([]);
    update(['main']);
  }

  assignFutures(List data) {
    final datas = [];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

}
