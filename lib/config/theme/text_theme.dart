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
        color: BColors.kPrimaryLightColor),
    titleMedium: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: BColors.kPrimaryLightColor),
    titleSmall: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: BColors.kLightPrimaryTextColor),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kLightPrimaryTextColor),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightPrimaryTextColor),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kLightPrimaryTextColor.withOpacity(0.5)),
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightPrimaryTextColor),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kLightPrimaryTextColor.withOpacity(0.5)),
  );

  //customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: BColors.kDarkPrimaryTextColor),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: BColors.kDarkPrimaryTextColor),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: BColors.kDarkPrimaryTextColor),
    titleLarge: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: BColors.kDarkPrimaryTextColor),
    titleMedium: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: BColors.kDarkPrimaryTextColor),
    titleSmall: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: BColors.kDarkPrimaryTextColor),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kDarkPrimaryTextColor),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: BColors.kDarkPrimaryTextColor),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: BColors.kDarkPrimaryTextColor.withOpacity(0.5)),
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kDarkPrimaryTextColor),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: BColors.kDarkPrimaryTextColor.withOpacity(0.5)),
  );
}
