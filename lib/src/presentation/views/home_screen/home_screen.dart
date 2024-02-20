import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/src/presentation/views/home_screen/components/home_categorie.dart';
import 'package:bulletos_v2/src/presentation/views/home_screen/components/texting_heading.dart';
import 'package:flutter/material.dart';
import '../../../../config/constants/constant_sizes.dart';
import '../../../../config/wigdets/event/horizontal_card.dart';
import 'components/home_app_bar.dart';
import 'components/primary_header_container.dart';
import 'components/search_field_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final dark = BHelperFunctions.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: Column(
              children: [
                BPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      //Appbar widget----------------------------------------------------------------
                      SizedBox(height: BSizes.defaultSpace),
                      const BHomeAppBar(),
                      SizedBox(height: BSizes.defaultSpace),
                      //Search appBar----------------------------------------------------------------
                      const BSearchContainer(text: 'Cherchez votre évènement'),
                      SizedBox(height: BSizes.defaultSpace),
                      Column(
                        children: [
                          //heading widget
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: BSizes.defaultSpace),
                            child: const BTextingHeading(
                              title: 'Categorie Populaire',
                              showActionButton: true,
                            ),
                          ),
                          SizedBox(height: BSizes.defaultSpace),
                          //Category widget
                          const BHomeCategories(),
                        ],
                      ),
                    ],
                  ),
                ),

                /// Body
                Column(
                  children: <Widget>[
                    //---EventCard---
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: BSizes.md),
                      child: const BTextingHeading(
                        title: "Evenement Populaire",
                        textColor: BColors.kPrimaryColor,
                      ),
                    ),
                    const BHorizontalCard(),
                    SizedBox(height: BSizes.spaceBtwSections),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: BSizes.md),
                      child: const BTextingHeading(
                        title: "Proche de vous",
                        textColor: BColors.kPrimaryColor,
                      ),
                    ),
                    const BHorizontalCard(),
                    SizedBox(height: BSizes.spaceBtwSections),

                    //BHorizontalCard()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
