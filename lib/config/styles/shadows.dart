import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class BShadowStyle {
  static final verticalEventShadow = BoxShadow(
      color: BColors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalEventShadow = BoxShadow(
      color: BColors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
