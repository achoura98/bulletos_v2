import 'package:bulletos_v2/src/presentation/views/home_screen/components/vertical_image.dart';
import 'package:flutter/material.dart';

import '../../../../../config/constants/constant_image.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return BVerticalImage(
            image: BImages.educationIcon,
            title: 'Education',
            onTap: () {},
          );
        },
      ),
    );
  }
}
