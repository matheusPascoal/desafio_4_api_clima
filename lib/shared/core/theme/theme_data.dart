import 'package:flutter/material.dart';

final primaryColor = const Color(0XFF2F3543);

final themeDataNormal = ThemeData(
  //ESQUEMA DE CORES
  primaryColor: primaryColor,

  //APPBAR
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: const Color(0XFF222222),
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),

  //ELEVATED BUTTOM
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
      textStyle: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
      ),
    ),
  ),

  //TEXTOS
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    ),
    labelLarge: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      color: Colors.black26,
    ),
    titleLarge: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
    ),
    titleSmall: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
  ),

  //INPUT DECORATION THEME
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
    ),
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 0.0),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
  ),
);


// class FontApp {
//   ///BOLD
//   TextStyle bold700Head26({Color? color}) => GoogleFonts.josefinSans(
//         fontSize: 100,
//         fontWeight: FontWeight.w700,
//         color: color ?? Colors.white,
//       );

//   TextStyle bold700Title24({Color? color}) => GoogleFonts.sairaSemiCondensed(
//         fontSize: 40,
//         fontWeight: FontWeight.w600,
//         color: color ?? Colors.black,
//       );

//   TextStyle bold700Title22({Color? color}) => GoogleFonts.sairaSemiCondensed(
//         fontSize: 25,
//         fontWeight: FontWeight.w700,
//         color: color ?? Colors.black,
//       );
//   TextStyle bold700Title21({Color? color}) => GoogleFonts.ubuntu(
//         fontSize: 30,
//         fontWeight: FontWeight.w700,
//         color: color ?? Colors.black,
//       );
// }