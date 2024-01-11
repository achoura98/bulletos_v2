import 'package:bulletos_v2/config/constants/constant_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../config/constants/constant_colors.dart';
import '../../../../../helper/helper_function.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.dark,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final bool dark;
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? BColors.dark
                        : BColors.light
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(BSizes.cardRadiusLg),
                border: showBorder ? Border.all(color: Colors.grey) : null,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(5, 5)),
                ]),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  prefixIcon: Icon(icon)),
            ),
          )),
          const SizedBox(
            width: 10,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: const Offset(5, 5))
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.sort,
                  size: 26,
                ),
              ))
        ],
      ),
    );
  }
}
