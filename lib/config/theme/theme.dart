import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/theme/app_bar_theme.dart';
import 'package:bulletos_v2/config/theme/bottom_sheet_theme.dart';
import 'package:bulletos_v2/config/theme/checkbox_theme.dart';
import 'package:bulletos_v2/config/theme/chipthem.dart';
import 'package:bulletos_v2/config/theme/outlined_button_theme.dart';
import 'package:bulletos_v2/config/theme/text_field_theme.dart';
import 'package:bulletos_v2/config/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'elevated_button_theme.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: BColors.kPrimaryColor,
      scaffoldBackgroundColor: BColors.klightBackgroungColors,
      textTheme: BTextTheme.lightTextTheme,
      chipTheme: BChipTheme.lightChipTheme,
      appBarTheme: BAppBarTheme.lightAppbarTheme,
      bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme,
      checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
      elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: BColors.kPrimaryColor,
      scaffoldBackgroundColor: BColors.kdarkBackgroungColors,
      textTheme: BTextTheme.darkTextTheme,
      chipTheme: BChipTheme.darkChipTheme,
      appBarTheme: BAppBarTheme.darkAppbarTheme,
      bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme,
      checkboxTheme: BCheckboxTheme.darkCheckboxTheme,
      elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme);
}
