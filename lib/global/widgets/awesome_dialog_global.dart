// ignore_for_file: deprecated_member_use
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AwesomeDialog globalAwesomeDialog(
    {required BuildContext context,
    DialogType dialogType = DialogType.info,
    AnimType animType = AnimType.scale,
    String title = "",
    String desc = "",
    Widget? btnOk,
    String? btnOkText,
    Function? btnOkOnPress,
    //Widget? btnCancel,
    //String? btnCancelText,
    double? width = 300,
    Function? btnCancelOnPress}) {
  return AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: animType,
    body: Column(children: [
      SelectableText(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      SizedBox(
        height: 20,
      ),
      SelectableText(
        desc,
        style: Theme.of(context).textTheme.caption,
      ),
      SizedBox(
        height: 10,
      ),
    ]),
    //btnCancelOnPress: () => btnCancelOnPress,
    btnOkOnPress: () => btnOkOnPress,
    btnOk: btnOk,
    width: width,
    btnOkText: "$btnOkText".tr,
    //btnCancel: btnCancel,
    // btnCancelText: "$btnCancelText".tr,
  );
}
