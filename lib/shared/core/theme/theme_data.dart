import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color get splashColor => const Color(0XFF222222);
Color get backgroundPrimary => const Color.fromARGB(255, 58, 61, 68);
Color get fieldColor => const Color.fromARGB(255, 104, 106, 112);
Color get errorColor => const Color(0XFFF70707);
Color get iconColor => const Color(0XFFFFFFFF);
Color get textWhite => const Color(0XFFFFFFFF);
Color get primaryColor => const Color.fromARGB(255, 0, 0, 0);

final themeData = ThemeData(
  //ESQUEMA DE CORES
  splashColor: splashColor,
  backgroundColor: backgroundPrimary,
  indicatorColor: fieldColor,
  errorColor: errorColor,
  canvasColor: iconColor,
  primaryColor: primaryColor,

  //TEXTOS
  textTheme: TextTheme(
    displayLarge: GoogleFonts.josefinSans(
      fontSize: 100,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
    labelLarge: GoogleFonts.sairaSemiCondensed(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: textWhite,
    ),
    titleLarge: GoogleFonts.sairaSemiCondensed(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
    titleSmall: GoogleFonts.ubuntu(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
  ),
);
