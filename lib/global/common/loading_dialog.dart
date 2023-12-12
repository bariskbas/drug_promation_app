
import 'package:drug_promation/global/common/loading_indicator.dart';
import 'package:drug_promation/global/widgets/dialog_global.dart';
import 'package:flutter/material.dart';

loadingDialog() {
  return globalDialog(
      content: LoadingIndicator(),
      barrierDismissible: false,
      confirm: Container(),
      cancel: Container());
}
