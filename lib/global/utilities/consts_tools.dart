import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kAddBouncerDuration = 1000;

const kSearchBouncerDuration = 800;

const globalFormatString = "dd-MM-yyyy HH:mm:ss";

const kMiadDate = "1970-01-01";

formatDate({String formatString = globalFormatString, required String? date}) {
  if (date == '' || date == null) {
    return '';
  }
  return DateFormat(formatString).format(DateTime.parse(date).toLocal());
}

parseToDateTime({String formatString = "yyyy-MM-dd", required String? date}) {
  if (date == '' || date == null) {
    return null;
  }
  return DateFormat(formatString).parse(date).toLocal();
}

Color stringToHexColor(String? color) {
  if (color == "" || color == null) {
    return Colors.white;
  }
  return Color(int.parse(color.replaceAll('#', '0xff')));
}
