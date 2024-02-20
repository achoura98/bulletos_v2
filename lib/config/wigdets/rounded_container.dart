import 'package:flutter/material.dart';

import '../constants/constant_colors.dart';
import '../constants/constant_sizes.dart';

class BRoundedContainer extends StatelessWidget {
  const BRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = BSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = BColors.kLightBorderColor,
    this.backgroundColor = BColors.white,
    this.padding,
    this.margin,
    this.topLeftRadius = BSizes.cardRadiusLg,
    this.topRightRadius = BSizes.cardRadiusLg,
    this.bottomLeftRadius = BSizes.cardRadiusLg,
    this.bottomRightRadius = BSizes.cardRadiusLg,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
        ),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
