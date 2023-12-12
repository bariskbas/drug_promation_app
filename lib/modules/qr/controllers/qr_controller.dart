import 'dart:io';

import 'package:drug_promation/global/widgets/dialog_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QrController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>().obs;

  final mainFuture = Future.wait([]).obs;

  /*final newsData = PagesResponseData().obs;
  final newsFuture = Future.value(PagesResponseData()).obs;*/
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'tolo0e7um3w',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ));
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

  void tagRead() async {
    globalDialog(
      textConfirm: 'Kapat',
      onConfirm: () {
        Get.close(1);
      },
      title: 'Bilgilendirme Videosu',
      content: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
          SizedBox(height: 10,),
          Text('Destek İçin Bizi Arayınız : +90 (5**) *** ** **')
        ],
      ),
    );
  }
}
