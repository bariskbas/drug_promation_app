// ignore_for_file: unnecessary_cast
import 'package:drug_promation/global/common/loading_indicator.dart';
import 'package:drug_promation/modules/home/controllers/home_controller.dart';
import 'package:drug_promation/modules/home/widgets/button/qr_code_button.dart';
import 'package:drug_promation/modules/home/widgets/text/welcome_desc.text.dart';
import 'package:drug_promation/modules/home/widgets/text/welcome_title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'main',
      builder: (controller) {
        return FutureBuilder(
          future: controller.mainFuture.value,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
              case ConnectionState.waiting:
                return SizedBox(height: 200, child: LoadingIndicator());
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center();
                }
                controller.assignFutures((snapshot.data! as List));

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HomeWelcomeTitle(),
                        HomeWelcomeDesc(),
                        SizedBox(height: 50,),
                        HomeQrCodeButton(),
                      ],
                    ),
                  ),
                );

              default:
                return SizedBox(height: 200, child: LoadingIndicator());
            }
          },
        );
      },
    );
  }
}
