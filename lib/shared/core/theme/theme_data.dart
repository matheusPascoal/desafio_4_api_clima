import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color get splashColor => const Color(0XFF222222);
Color get backgroundLigth => const Color(0XFFF1F1F1);
Color get backgroundPrimary => const Color.fromARGB(255, 58, 61, 68);
Color get fieldColor => const Color.fromARGB(255, 104, 106, 112);

Color get textBlack => const Color(0XFF000000);
Color get textWhite => const Color(0XFFFFFFFF);
Color get alert1 => const Color(0XFFF48120);
Color get iconColor => const Color(0XFFFFFFFF);

final themeData = ThemeData(
  //ESQUEMA DE CORES
  splashColor: splashColor,
  primaryColor: backgroundPrimary,
  errorColor: alert1,
  cardColor: iconColor,

  // //APPBAR
  // appBarTheme: AppBarTheme(
  //   elevation: 0,
  //   backgroundColor: const Color(0XFF222222),
  //   iconTheme: IconThemeData(
  //     color: backgroundPrimary,
  //   ),
  // ),

  //ELEVATED BUTTOM
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     primary: fieldColor,
  //   ),
  // ),

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
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
    titleSmall: GoogleFonts.ubuntu(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
  ),
);
  

  //INPUT DECORATION THEME
//   inputDecorationTheme: InputDecorationTheme(
//     labelStyle: const TextStyle(
//       fontFamily: 'Roboto',
//       fontSize: 14,
//     ),
//     iconColor: primaryColor,
//     prefixIconColor: primaryColor,
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor, width: 0.0),
//       borderRadius: const BorderRadius.all(
//         Radius.circular(5),
//       ),
//     ),
//   ),
// );
