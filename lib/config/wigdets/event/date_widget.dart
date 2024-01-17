import 'package:flutter/material.dart';

import '../../constants/constant_sizes.dart';

class BDateWidget extends StatelessWidget {
  const BDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Mercredi 15 Jan",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(width: BSizes.spaceBtwInputField),
        Text(
          "10:00 - 12:00 ",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
