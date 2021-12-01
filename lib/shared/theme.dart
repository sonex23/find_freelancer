import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 20;

Color kPrimaryColor = const Color(0xffAF4A53);
Color kSecondaryColor = const Color(0xFFC16F77);
Color kPinkTextColor = const Color(0xffE6C5C9);
Color kBlackColor = const Color(0xff1E2237);
Color kPinkCardColor = const Color(0xffECC2B9);

TextStyle whiteTextStyle = GoogleFonts.lato(
  color: Colors.white,
);

TextStyle blackTextStyle = GoogleFonts.lato(
  color: kBlackColor,
);

TextStyle redTextStyle = GoogleFonts.lato(
  color: kPrimaryColor,
);

TextStyle pinkTextStyle = GoogleFonts.lato(
  color: kPinkTextColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
