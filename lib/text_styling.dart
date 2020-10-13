import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextStyling on TextStyle {
  static TextStyle contactStyle() {
    return GoogleFonts.sourceSansPro(
      fontSize: 20,
      color: Colors.teal.shade900,
    );
  }
}
