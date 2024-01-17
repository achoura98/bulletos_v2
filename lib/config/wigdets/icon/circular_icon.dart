import 'package:flutter/material.dart';
import '../../constants/constant_colors.dart';

class BCircularIcon extends StatelessWidget {
  const BCircularIcon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.size = 24.0,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
    this.color,
  });

  final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : dark
                  ? BColors.transparent
                  : BColors.transparent),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
