import 'package:flutter/material.dart';

import '../../../../../config/constants/constant_colors.dart';
import '../../../../../config/constants/constant_image.dart';
import '../../../../../config/constants/constant_sizes.dart';
import '../../../../../config/styles/shadows.dart';
import '../../../../../config/wigdets/image/rounded_image.dart';
import '../../../../../config/wigdets/rounded_container.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 350,
        height: 100,
        decoration: BoxDecoration(
            boxShadow: [BShadowStyle.horizontalEventShadow],
            borderRadius: BorderRadius.circular(BSizes.productImageRadius),
            color: dark ? BColors.grey.shade900 : BColors.grey.shade200),
        child: Row(
          children: [
            BRoundedContainer(
              topLeftRadius: 16,
              topRightRadius: 16,
              bottomLeftRadius: 16,
              bottomRightRadius: 16,
              height: 100,
              backgroundColor: dark ? BColors.dark : BColors.kPrimaryColor,
              child: const Stack(
                children: [
                  BRoundedImage(
                    topLeftRadius: 16,
                    topRightRadius: 16,
                    bottomLeftRadius: 16,
                    bottomRightRadius: 16,
                    fit: BoxFit.fill,
                    width: 130,
                    height: 100,
                    imageUrl: BImages.eventImage1,
                    applyImageRadius: true,
                  ),
                ],
              ),
            ),

            //Details
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ramadan Kerim",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Mercredi 15 Jan",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Lomé. Hotel La Concorde',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(Icons.share),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
