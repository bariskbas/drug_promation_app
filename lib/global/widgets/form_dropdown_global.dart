// ignore_for_file: must_be_immutable, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class GlobalDropDown extends StatelessWidget {
  String? hintText;
  void Function()? onRemove;
  void Function(Object?)? onChanged;
  String name;
  dynamic initialValue;
  List<DropdownMenuItem<Object>> items;

  GlobalDropDown({
    this.hintText,
    required this.name,
    this.onChanged,
    this.initialValue,
    required this.items,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: name,
      initialValue: initialValue,
      builder: (FormFieldState<dynamic> field) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Padding(
                  padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                  child: Text(
                    hintText.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),*/
                Card(
                  elevation: 20,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButton(
                      hint: Text(
                        hintText?.tr ?? '',
                      ),
                      isDense: true,
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 56,
                      elevation: 16,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: Theme.of(context).textTheme.button,
                      value: field.value,
                      onChanged: onChanged,
                      items: items,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
