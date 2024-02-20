import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BTextTheme {
  BTextTheme._();

  //customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: BColors.kPrimaryColor),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: BColors.kPrimaryColor),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: BColors.kPrimaryColor),
    titleLarge: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: BColors.kLightTextColor),
    titleMedium: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: BColors.kLightTextColor),
    titleSmall: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: BColors.kLightTextColor),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kLightTextColor),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightTextColor),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kLightTextColor.withOpacity(0.5)),
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightTextColor),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightTextColor.withOpacity(0.5)),
  );

  //customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: BColors.kdarkTextColors),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: BColors.kdarkTextColors),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: BColors.kdarkTextColors),
    titleLarge: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: BColors.kdarkTextColors),
    titleMedium: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: BColors.kdarkTextColors),
    titleSmall: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: BColors.kdarkTextColors),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kdarkTextColors),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: BColors.kdarkTextColors),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kdarkTextColors.withOpacity(0.5)),
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kdarkTextColors),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kdarkTextColors.withOpacity(0.5)),
  );
}
