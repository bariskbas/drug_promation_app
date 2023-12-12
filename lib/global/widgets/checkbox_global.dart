// ignore_for_file: must_be_immutable, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GlobalCheckBox extends StatelessWidget {
  String? textTitle;
  String? name;
  bool? initialValue;
  void Function(bool?)? onChanged;
  GlobalCheckBox(
      {this.textTitle, this.name, this.initialValue, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      initialValue: initialValue,
      name: name!,
      builder: (FormFieldState<dynamic> field) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: field.value,
              onChanged: onChanged,
            ),
            Text(textTitle!, style: Theme.of(context).textTheme.subtitle2)
          ],
        );
      },
    );
  }
}
