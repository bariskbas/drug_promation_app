import 'dart:io';

import 'package:drug_promation/global/common/loading_dialog.dart';
import 'package:drug_promation/modules/qr/controllers/qr_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
      
      _qrController.tagRead();
    });
    controller.pauseCamera();
    controller.resumeCamera();
  }
}
