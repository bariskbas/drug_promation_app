
import 'package:drug_promation/global/widgets/dialog_global.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

verifyDialog({
  FaIcon icon = const FaIcon(
    FontAwesomeIcons.question,
    size: 60,
  ),
  required String message,
  required void Function()? onConfirm,
}) {
  return globalDialog(
    content: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon,
        SizedBox(
          height: 50,
        ),
        Text(
          message,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    onConfirm: onConfirm,
    textCancel: 'Hayır',
    onCancel: () {},
    textCancelActive: true,
  );
}
