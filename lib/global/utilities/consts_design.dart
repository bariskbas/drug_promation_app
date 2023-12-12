import 'package:flutter/material.dart';

const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);
const defaultPadding = 16.0;

const Color expansionTileIconColor = Colors.white;

const defaultRadius = BorderRadius.all(Radius.circular(10));

const defaultFieldWidth = 230.0;
const defaultFieldHeight = 50.0;

inputDecorationEnabledBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white, width: 1),
    borderRadius: defaultRadius,
  );
}

inputDecorationFocusedBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(width: 1, color: Colors.blue),
  );
}

inputDecorationBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}

searchButtonSuffixDecoration() {
  return Icon(
    Icons.search,
    color: Colors.white,
  );
}

addButtonSuffixDecoration() {
  return Icon(
    Icons.add,
    color: Colors.white,
  );
}

multiSelectDecoration() {
  return BoxDecoration(
    border: Border.all(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.circular(10),
  );
}

spinBoxDecoration() {
  return InputDecoration(
    border: InputBorder.none,
  );
}
