import 'package:bulletos_v2/config/wigdets/icon/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../config/constants/constant_colors.dart';
import '../../../../helper/helper_function.dart';
import '../home_screen/components/app_bar_widget.dart';
import 'components/favorite_card.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/favorite";
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Column(
            children: [
              BAppBar(
                title: Text("Favoris",
                    style: Theme.of(context).textTheme.headlineMedium),
                actions: [
                  BCircularIcon(
                    dark: dark,
                    icon: Iconsax.add,
                    color: BColors.kPrimaryColor,
                  )
                ],
              ),
              Column(
                children: [
                  FavoriteCard(dark: dark),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
