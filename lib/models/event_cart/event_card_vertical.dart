import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/constant_image.dart';
import 'package:bulletos_v2/config/wigdets/event/location_widget.dart';
import 'package:bulletos_v2/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../config/constants/constant_sizes.dart';
import '../../config/styles/shadows.dart';
import '../../config/wigdets/event/date_widget.dart';
import '../../config/wigdets/event/descrip_widget.dart';
import '../../config/wigdets/icon/circular_icon.dart';
import '../../config/wigdets/rounded_container.dart';
import '../../config/wigdets/image/rounded_image.dart';

class BEventCardVertical extends StatelessWidget {
  const BEventCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        width: 300,
        decoration: BoxDecoration(
            boxShadow: [BShadowStyle.verticalEventShadow],
            borderRadius: BorderRadius.circular(BSizes.productImageRadius),
            color: dark ? BColors.grey.shade900 : BColors.transparent),
        child: Column(
          children: [
            /// Thumbnail, Wishlist button,
            BRoundedContainer(
              //height: 280,
              //padding: EdgeInsets.all(BSizes.sm),
              backgroundColor: dark ? BColors.dark : BColors.light,
              child: Stack(
                children: [
                  const BRoundedImage(
                    width: 300,
                    imageUrl: BImages.eventImage1,
                    applyImageRadius: true,
                  ),

                  // Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: BCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            /// Details
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  BDescripHeader(dark: dark),
                  const BDateWidget(),
                  BLocationWidget(dark: dark)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
