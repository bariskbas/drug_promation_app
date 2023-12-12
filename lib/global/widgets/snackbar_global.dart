import 'package:flutter/material.dart';
import 'package:get/get.dart';

globalSnackBar({
  String title = "",
  String message = "",
}) {
  return Get.snackbar(
    title,
    message,
    backgroundColor: Colors.white,
    maxWidth: 350,
  );
}
