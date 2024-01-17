import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constant_colors.dart';
import '../../constants/constant_sizes.dart';

class BLocationWidget extends StatelessWidget {
  const BLocationWidget({
    super.key,
    required this.dark,
    this.icon = Iconsax.location5,
    this.text = 'Lomé. Hotel La Concorde',
  });

  final bool dark;
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: dark ? BColors.white : BColors.kPrimaryColor,
        ),
        SizedBox(width: BSizes.sm),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
