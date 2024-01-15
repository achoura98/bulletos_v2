import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../config/constants/constant_sizes.dart';
import '../../../../../helper/helper_function.dart';

class BVerticalImage extends StatelessWidget {
  const BVerticalImage({
    super.key,
    required this.image,
    required this.title,
    this.textColor = BColors.white,
    this.backgroundColor = BColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: BSizes.spaceBtwItems),
        child: Column(
          children: [
            //circular icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(BSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (BHelperFunctions.isDarkMode(context)
                        ? BColors.black
                        : BColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  // color: BHelperFunctions.isDarkMode(context)
                  //     ? BColors.light
                  //     : BColors.dark,
                ),
              ),
            ),
            // text
            SizedBox(height: BSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
