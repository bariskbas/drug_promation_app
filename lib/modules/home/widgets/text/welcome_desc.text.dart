import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWelcomeDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris accumsan nec lectus ac lacinia. Suspendisse eget pretium nisl. Nam pellentesque dui vitae euismod sagittis. Quisque lobortis tincidunt purus at tempor. Suspendisse eu tempus mi, vulputate luctus nisi. Curabitur ipsum felis, cursus vitae suscipit eu, eleifend et orci. Donec fringilla lacus nisl, et tempus ante venenatis sed. Nam dignissim turpis vitae pulvinar varius. Phasellus id hendrerit sem.',
      textAlign: TextAlign.center,
      style: GoogleFonts.oswald(
        textStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
