import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../src/presentation/views/home_screen/components/app_bar_widget.dart';
import '../../../constants/constant_colors.dart';
import '../../../constants/constant_sizes.dart';
import '../../../constants/text_string.dart';
import '../../icon/cart_couter_icon.dart';

class BHomeAppBar extends StatelessWidget {
  const BHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppBar(
      title: Row(
        children: [
          const CircleAvatar(
            maxRadius: 25,
            backgroundColor: BColors.kPrimaryColor,
            backgroundImage:
                AssetImage("assets/images/profil/muslim baby girl.png"),
          ),
          SizedBox(width: BSizes.defaultSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(BTexts.homeAppBarTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: BColors.grey)),
              Row(
                children: [
                  const Icon(
                    Iconsax.map_1,
                    color: BColors.white,
                  ),
                  SizedBox(width: BSizes.spaceBtwItems),
                  Text(BTexts.homeAppBarTitle2,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: BColors.white)),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        BCartCounterIcon(
          onPressed: () {},
          iconColor: BColors.white,
        )
      ],
    );
  }
}
