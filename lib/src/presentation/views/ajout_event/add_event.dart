import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../config/constants/constant_colors.dart';
import '../../../../config/wigdets/icon/circular_icon.dart';
import '../../../../helper/helper_function.dart';
import '../home_screen/components/app_bar_widget.dart';

class AddEventScreen extends StatelessWidget {
  static String routeName = "/add_event";
  const AddEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        appBar: BAppBar(
          title: Text("Ajouter Evenement",
              style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            BCircularIcon(
              dark: dark,
              icon: Iconsax.add,
              color: BColors.kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
