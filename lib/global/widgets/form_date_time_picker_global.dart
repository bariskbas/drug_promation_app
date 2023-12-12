// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class GlobalFormDateTimePicker extends StatelessWidget {
  String name;
  DateFormat? format;
  DateTime? initialDate;
  DateTime? initialValue;
  DateTime? firstDate;
  DateTime? lastDate;
  bool enableInteractiveSelection;
  InputDecoration decoration;
  void Function()? onEditingComplete;
  void Function()? onReset;
  void Function(DateTime?)? onChanged;
  bool expands;
  TextAlign textAlign;
  String? Function(DateTime?)? validator;
  InputType inputType;
  DatePickerMode initialDatePickerMode;
  TimePickerEntryMode timePickerInitialEntryMode;
  DatePickerEntryMode initialEntryMode;
  bool enabled;
  GlobalFormDateTimePicker({
    required this.name,
    this.format,
    this.textAlign = TextAlign.start,
    this.initialDate,
    this.initialValue,
    this.firstDate,
    this.lastDate,
    this.enableInteractiveSelection = true,
    this.onEditingComplete,
    this.onReset,
    this.onChanged,
    this.inputType = InputType.both,
    this.initialDatePickerMode = DatePickerMode.day,
    this.initialEntryMode = DatePickerEntryMode.calendar,
    this.timePickerInitialEntryMode = TimePickerEntryMode.dial,
    this.decoration = const InputDecoration(),
    this.expands = false,
    this.validator,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      validator: validator,
      cancelText: "Kapat",
      confirmText: "Tamam",
      helpText: "Aralığı Seç",
      errorFormatText: "Format Yanlış",
      errorInvalidText: "Girilen Değer Yanlış",
      name: name,
      enabled: enabled,
      style: Theme.of(context).textTheme.subtitle1,
      format: format,
      locale: Locale('tr', 'TR'),
      inputType: inputType,
      initialDate: initialDate,
      initialValue: initialValue,
      initialDatePickerMode: initialDatePickerMode,
      initialEntryMode: initialEntryMode,
      timePickerInitialEntryMode: timePickerInitialEntryMode,
      firstDate: firstDate,
      lastDate: lastDate,
      decoration: decoration,
      expands: expands,
      textAlign: textAlign,
      enableInteractiveSelection: enableInteractiveSelection,
      onEditingComplete: onEditingComplete,
      onReset: onReset,
      onChanged: onChanged,
    );
  }
}
