import 'package:flutter/material.dart';

import '../../constants/constant_colors.dart';
import '../../constants/constant_sizes.dart';
import '../rounded_container.dart';

class BDescripHeader extends StatelessWidget {
  const BDescripHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Home Education',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Spacer(),
        BRoundedContainer(
          radius: BSizes.cardRadiusSm,
          backgroundColor: dark ? BColors.dark : BColors.grey,
          height: 30,
          //width: 60,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "5000F",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        )
      ],
    );
  }
}
