// ignore_for_file: avoid_print, constant_identifier_names, curly_braces_in_flow_control_structures
import 'package:flutter/foundation.dart';

const kLOG_TAG = "[COMPANYPROMATION]";
void logger(dynamic data) {
  DateTime now = DateTime.now();
  if (kDebugMode)
    print(
        "[${now.hour.toString() + ":" + now.minute.toString()}]$kLOG_TAG${data.toString()}");
}
