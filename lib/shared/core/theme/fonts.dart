import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontApp {
  ///BOLD
  TextStyle bold700Head26({Color? color}) => GoogleFonts.josefinSans(
        fontSize: 100,
        fontWeight: FontWeight.w700,
        color: color ?? Colors.white,
      );

  TextStyle bold700Title24({Color? color}) => GoogleFonts.sairaSemiCondensed(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black,
      );

  TextStyle bold700Title22({Color? color}) => GoogleFonts.sairaSemiCondensed(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: color ?? Colors.black,
      );
  TextStyle bold700Title21({Color? color}) => GoogleFonts.ubuntu(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: color ?? Colors.black,
      );
}
