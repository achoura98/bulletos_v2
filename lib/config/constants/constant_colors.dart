import 'package:flutter/material.dart';

class BColors {
  BColors._();

  static const kPrimaryColor = Color(0xFF1B5E20);
  static const klightBackgroungColors = Color.fromRGBO(250, 250, 250, 1);
  static const kdarkBackgroungColors = Colors.black;
  static const kPrimaryLightColor = Color.fromRGBO(255, 236, 223, 1);
  static const kPrimaryGradientColor = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
  static const kSecondaryColor = Color(0xFF979797);
  static const kLightPrimaryTextColor = Colors.black;
  static const kDarkPrimaryTextColor = Colors.white;
  static const kSecondTextColor = Color(0xFF757575);

  static const kLightPrimaryButtonColor = Color(0xFF1B5E20);
  static const kDarkPrimaryButtonColor = Colors.white;
  static const kSecondButtonColor = Color(0xFF757575);

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);

  static const kLightBorderColor = Color(0xFF1B5E20);
  static const kDarkBorderColor = Colors.white;
  static const kSecondBorderColor = Colors.grey;

  //text colors
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF6C757D);
  static const textWhite = Colors.white;

  static const white = Colors.white;
  static const black = Colors.black;
  static const grey = Colors.grey;
  static const transparent = Colors.transparent;

// onboarding colors
  static const tOnboardingScreen1Colors = Colors.white;
  static const tOnboardingScreen2Colors = Color(0xfffddcdf);
  static const Color tOnboardingScreen3Colors = Color(0xffffdcbd);

  //Border color
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
}
