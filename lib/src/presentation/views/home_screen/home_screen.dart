import 'package:bulletos_v2/config/constants/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../config/constants/constant_colors.dart';
import '../../../../config/constants/constant_sizes.dart';
import 'components/home_app_bar.dart';
import 'components/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = BHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar widget----------------------------------------------------------------
                  const BHomeAppBar(),
                  SizedBox(height: BSizes.spaceBtwSections),
                  //Search appBar----------------------------------------------------------------
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: BSizes.defaultSpace),
                    child: Container(
                      width: BDeviceUtility.getScreenWidth(context),
                      padding: EdgeInsets.all(BSizes.md),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(BSizes.cardRadiusLg),
                          border: Border.all(color: BColors.grey)),
                      child: Row(
                        children: [
                          const Icon(Iconsax.search_normal,
                              color: BColors.grey),
                          SizedBox(width: BSizes.spaceBtwItems),
                          Text(
                            'Cherchez votre évènement',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            // // search widget----------------------------------------------------------------
            // SearchFieldWidget(dark: dark, text: 'Rechercher ici'),
            // SizedBox(height: BSizes.defaultSpace),

            // // category widget----------------------------------------------------------------
            // Padding(
            //   padding: EdgeInsets.only(left: BSizes.defaultSpace),
            //   child: Column(
            //     children: [
            //       //heading widget
            //       const BTextingHeading(
            //           title: 'Categorie Populaire', showActionButton: false),
            //       SizedBox(
            //         height: BSizes.spaceBtwItems
            //       ),

            //       //Categories widget----------------------------------------------------------------
            //       ListView.builder(
            //         itemCount: 7,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (_, index) {

            //       })
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
