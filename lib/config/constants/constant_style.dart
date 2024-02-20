import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant_colors.dart';

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = GoogleFonts.poppins(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: BColors.kPrimaryColor,
  height: 1.5,
);
final headingStyle2 = GoogleFonts.poppins(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final headingStyle3 = GoogleFonts.poppins(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(
    vertical: 15.0,
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: BColors.kLightBorderColor, width: 2.0),
  );
}
