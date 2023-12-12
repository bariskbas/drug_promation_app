// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<FormBuilderFieldOption<String>> taxModel = [
  FormBuilderFieldOption(value: '1', child: Text('1')),
  FormBuilderFieldOption(value: '8', child: Text('8')),
  FormBuilderFieldOption(value: '18', child: Text('18')),
];

const statusIcon = FontAwesomeIcons.dotCircle;

Map<String, Widget> orderTagColorModel = {
  '#2697FF': FaIcon(
    statusIcon,
    color: Color(0xFF2697FF),
  ),
  '#4caf50': FaIcon(
    statusIcon,
    color: Color(0xFF4caf50),
  ),
  '#ffff17': FaIcon(
    statusIcon,
    color: Color(0xFFffff17),
  ),
  '#f7461e': FaIcon(
    statusIcon,
    color: Color(0xFFf7461e),
  ),
};

Map<String, String> ornekModel = {
  '1': 'Örnek',
  '0': 'Örnek',
};
