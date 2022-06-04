import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mythem {
  static ThemeData ligththem(BuildContext context)=> ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue,

    )
  );


  static ThemeData darkthem(BuildContext context)=> ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryColor: Colors.black,
    cardColor: Colors.black,
    buttonColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      //textTheme: Text,
      iconTheme: IconThemeData(
        color: Colors.white,
      )
    )
  );

}