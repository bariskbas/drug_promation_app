// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';

globalDialog({
  String title = "",
  Color? backgroundColor,
  Widget? content,
  Widget? confirm,
  Widget? cancel,
  bool barrierDismissible = true,
  bool textCancelActive = false,
  void Function()? onConfirm,
  void Function()? onCancel,
  String? textConfirm = "Tamam",
  String? textCancel = "Kapat",
}) {
  return (textCancelActive == true
      ? Get.defaultDialog(
          title: title,
          titleStyle: Theme.of(Get.context!).textTheme.subtitle1,
          confirm: confirm,
          onConfirm: onConfirm,
          barrierDismissible: barrierDismissible,
          contentPadding: EdgeInsets.all(10.0),
          buttonColor: Color(0xFF273942),
          confirmTextColor: Colors.white,
          cancelTextColor: Colors.black,
          onCancel: onCancel,
          cancel: cancel,
          backgroundColor: backgroundColor,
          textCancel: "$textCancel".tr,
          textConfirm: "$textConfirm".tr,
          content: Center(child: content))
      : Get.defaultDialog(
          title: title,
          titleStyle: Theme.of(Get.context!).textTheme.subtitle1,
          confirm: confirm,
          onConfirm: onConfirm,
          barrierDismissible: barrierDismissible,
          contentPadding: EdgeInsets.all(10.0),
          buttonColor: Color(0xFF273942),
          confirmTextColor: Colors.white,
          cancelTextColor: Colors.white,
          onCancel: onCancel,
          cancel: cancel,
          backgroundColor: backgroundColor,
          textConfirm: "$textConfirm".tr,
          content: Center(child: content)));
}
