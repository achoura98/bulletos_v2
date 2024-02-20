import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';

//Light and dark elevated button themes

class BElevatedButtonTheme {
  BElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: BColors.kdarkButtonColors,
    backgroundColor: BColors.kPrimaryColor,
    disabledForegroundColor: BColors.kLightButtonColor,
    disabledBackgroundColor: BColors.kLightButtonColor,
    side: const BorderSide(color: BColors.kPrimaryColor),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: const TextStyle(
        fontSize: 16,
        color: BColors.kLightTextColor,
        fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: BColors.kdarkButtonColors,
    backgroundColor: BColors.kPrimaryColor,
    disabledForegroundColor: BColors.kLightButtonColor,
    disabledBackgroundColor: BColors.kLightButtonColor,
    side: const BorderSide(color: BColors.kPrimaryColor),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: const TextStyle(
        fontSize: 16,
        color: BColors.kLightTextColor,
        fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
