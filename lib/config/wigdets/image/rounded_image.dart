import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class BRoundedImage extends StatelessWidget {
  const BRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    //this.border,
    this.backgroundColor = BColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    //this.borderRadius = 16.0,
    this.topLeftRadius = 16,
    this.bottomLeftRadius = 16,
    this.topRightRadius = 16,
    this.bottomRightRadius = 16,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  //final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  //final double borderRadius;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            //border: border,
            //color: backgroundColor,
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
        )),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius),
                  topRight: Radius.circular(topRightRadius),
                  bottomLeft: Radius.circular(bottomLeftRadius),
                  bottomRight: Radius.circular(bottomRightRadius),
                )
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
