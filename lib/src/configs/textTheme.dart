import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const color_black = Colors.black;
const color_orange = Colors.deepOrange;
const color_grey = Color(0xff9E9E9E);
const color_white = Color(0xffFFA801);
const color_green = Color(0xff7BB655);

TextTheme defaultText = TextTheme(
  headline1: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 96),
  headline2: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 60),
  headline3: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 48),
  headline4: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 34),
  headline5: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 24),
  headline6: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
  bodyText1: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 16),
  bodyText2: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 14),
  subtitle1: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 16),
  subtitle2: GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
  button: GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
  caption: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 12, ),
);
