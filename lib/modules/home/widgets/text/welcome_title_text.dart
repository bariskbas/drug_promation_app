import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWelcomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hoşgeldiniz',
      style: GoogleFonts.oswald(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 1.0,
          fontSize: 22,
        ),
      ),
    );
  }
}
