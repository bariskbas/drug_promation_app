// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageBox extends StatelessWidget {
  final String? logo;

  /// custom uri for right click event.
  String? uri;

  /// this is for what happens when user clicks the image
  void Function()? onTap;

  ///  This is for image selection. it is for select image class only. Don't use this on regular ImageBox. use it from [GlobalSelectImage]
  final void Function()? onPressed;

  /// Use this to give width to image. don't do it with container
  double? width;

  /// Use this to give height to image. don't do it with container
  double? height;

  /// This widget should be used when viewing images. use width and height to give dimensions to widget. do not use container without expection.
  ImageBox(
      {this.logo,
      this.uri,
      this.onPressed,
      this.width,
      this.height,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          logo == "" || logo == null
              ? Center(
                  child: SelectableText("noimage".tr,
                      style: Theme.of(context).textTheme.caption!),
                )
              : MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Link(
                      uri: Uri.parse('${uri ?? logo}'),
                      builder: (context, function) {
                        return GestureDetector(
                          onTap: onTap ??
                              () async {
                                await launch(logo!);
                              },
                          child: Center(
                            child: Image.network(
                              "$logo",
                              width: width,
                              height: height,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                return child;
                              },
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return Center(
                                  child: SelectableText(logo ?? '',
                                      style:
                                          Theme.of(context).textTheme.caption!),
                                );
                              },
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      })),
          IconButton(
            onPressed: onPressed,
            icon: FaIcon(FontAwesomeIcons.plus),
            disabledColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
