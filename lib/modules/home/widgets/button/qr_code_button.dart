import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeQrCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/qr');
      },
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: Text(
            'Qr Kodunuzu Okutmak İçin Tıklayınız',
            textAlign: TextAlign.center,
            style: GoogleFonts.oswald(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
