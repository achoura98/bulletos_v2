import 'package:bulletos_v2/config/wigdets/appbar/components/primary_header_container.dart';
import 'package:bulletos_v2/src/presentation/views/home_screen/components/app_bar_widget.dart';
import 'package:bulletos_v2/src/presentation/views/otp_success/otp_success_screen.dart';
import 'package:bulletos_v2/src/presentation/views/profil/components/profil_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../config/constants/constant_colors.dart';
import '../../../../config/constants/constant_sizes.dart';
import '../../../../config/wigdets/list_tile/user_profle.dart';
import 'components/user_stat.dart';

class ProfilScreen extends StatelessWidget {
  static String routeName = "/profil";
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            ///--- Header
            BPrimaryHeaderContainer(
                child: Column(
              children: [
                BAppBar(
                  title: Text("Profil",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: BColors.white)),
                ),
                // SizedBox(height: BSizes.spaceBtwSections),

                /// User Profile Card
                BUserProfile(),
                SizedBox(height: BSizes.spaceBtwSections),
              ],
            )),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: BColors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserStat(
                      text: '0',
                      title: 'Favoris',
                    ),
                    UserStat(
                      text: '0',
                      title: 'Mes billets',
                    ),
                    UserStat(
                      text: '0',
                      title: 'Organisateurs',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: BSizes.spaceBtwSections),
            ProfilMenuWidget(
                title: "Centre de notifications",
                icon: Iconsax.notification,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),
            ProfilMenuWidget(
                title: "Comptes liés",
                icon: Iconsax.personalcard,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),

            ProfilMenuWidget(
                title: "Problème de billets",
                icon: Iconsax.message_question,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),

            ProfilMenuWidget(
                title: "Comptes liés",
                icon: Iconsax.notification,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),

            ProfilMenuWidget(
                title: "Gérer les évenements",
                icon: Iconsax.calendar,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),

            ProfilMenuWidget(
                title: "Paramètres",
                icon: Iconsax.setting,
                onPressed: () {},
                textColor: BColors.textPrimary),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BColors.white,
                  ),
                  child: Text('Deconnexion',
                      style: const TextStyle().copyWith(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: BColors.kPrimaryColor)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
