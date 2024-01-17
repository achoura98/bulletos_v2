import 'package:bulletos_v2/src/presentation/views/home_screen/components/home_categorie.dart';
import 'package:bulletos_v2/src/presentation/views/home_screen/components/texting_heading.dart';
import 'package:flutter/material.dart';
import '../../../../config/constants/constant_sizes.dart';
import '../../../../models/event_cart/event_card_vertical.dart';
import 'components/home_app_bar.dart';
import 'components/primary_header_container.dart';
import 'components/search_field_widget.dart';

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
                  SizedBox(height: BSizes.defaultSpace),
                  const BHomeAppBar(),
                  SizedBox(height: BSizes.defaultSpace),
                  //Search appBar----------------------------------------------------------------
                  const BSearchContainer(text: 'Cherchez votre évènement'),
                  SizedBox(height: BSizes.defaultSpace),
                  Padding(
                    padding: EdgeInsets.only(left: BSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading widget
                        const BTextingHeading(
                            title: 'Categorie Populaire',
                            showActionButton: false),
                        SizedBox(height: BSizes.defaultSpace),

                        //Category widget
                        const BHomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(BSizes.defaultSpace),
              child: const Column(
                children: [BEventCardVertical()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
