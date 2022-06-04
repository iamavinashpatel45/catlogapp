import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mythem {
  static ThemeData ligththem(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: Colors.blue,
        backgroundColor: Colors.grey[200],
        cursorColor: Colors.black,
      );

  static ThemeData darkthem(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: Colors.black,
        cursorColor: Colors.white,
        backgroundColor: Colors.grey[600],
        cardColor: Colors.black26,
      );
}
