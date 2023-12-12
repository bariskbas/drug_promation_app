
import 'package:drug_promation/global/bindings/initial_binding.dart';
import 'package:drug_promation/global/customs/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'global/utilities/routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('tr', ''),
        Locale('en', ''),
      ],
      debugShowMaterialGrid: false,
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      title: 'Tanıtım Uygulaması',
      initialRoute: '/home',
      transitionDuration: Duration(seconds: 0),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('tr', 'TR'),
      onInit: () async {
      },
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Overlay(
            initialEntries: [
              OverlayEntry(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "Tanıtım Uygulaması",
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: 3.0,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    flexibleSpace: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                            Color(0xff2895d1),
                            Color(0xff1c5fa8),
                            Color(0xff1e4e9b),
                          ],
                        ),
                      ),
                    ),
                    centerTitle: true,
                  ),
                  backgroundColor: Colors.white,
                  body: GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    child: Row(
                      children: [
                        Expanded(flex: 4, child: widget!),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      getPages: routes,
    );
  }
}
