import 'package:flutter/material.dart';

import '../../../models/event_cart/event_card_vertical.dart';
import '../../constants/constant_sizes.dart';

class BHorizontalCard extends StatelessWidget {
  const BHorizontalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: BSizes.md),
            child: const BEventCardVertical(),
          );
        },
      ),
    );
  }
}
