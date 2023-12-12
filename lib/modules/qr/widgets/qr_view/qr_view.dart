import 'dart:io';

import 'package:drug_promation/global/common/loading_dialog.dart';
import 'package:drug_promation/global/widgets/dialog_global.dart';
import 'package:drug_promation/modules/qr/controllers/qr_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QrPage extends StatelessWidget {
  QRViewController? controller;
  final QrController _qrController = Get.find();
  GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width,
      child: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      controller.pauseCamera();
      var videoId = YoutubePlayer.convertUrlToId(scanData.code.toString());

      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoId!.toString(),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      );
      globalDialog(
        textConfirm: 'Kapat',
        onConfirm: () {
          Get.close(1);
          controller.resumeCamera();
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
            SizedBox(
              height: 10,
            ),
            Text('Destek İçin Bizi Arayınız : +90 (5**) *** ** **')
          ],
        ),
      );
    });
  }
}
