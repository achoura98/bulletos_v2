// ignore_for_file: library_private_types_in_public_api

import 'package:bulletos_v2/src/presentation/views/ajout_event/add_event.dart';
import 'package:bulletos_v2/src/presentation/views/favoris/wishlist.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../../config/constants/constant_colors.dart';
import '../../../../helper/helper_function.dart';
import '../home_screen/home_screen.dart';
import '../profil/profil.dart';
import '../tickets/tickets.dart';

class NavBarWidget extends StatefulWidget {
  static String routeName = "/nav_bar";

  const NavBarWidget({super.key});

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const WishListScreen(),
    const AddEventScreen(),
    const TicketScreen(),
    const ProfilScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: dark
              ? BColors.kdarkBackgroungColors
              : BColors.klightBackgroungColors,
          body: screens[currentIndex],
          extendBody: true,
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0)
            ]),
            child: GNav(
              tabActiveBorder: Border.all(
                width: 3,
                color:
                    dark ? BColors.kDarkBorderColor : BColors.kLightBorderColor,
              ),
              backgroundColor: dark
                  ? BColors.kdarkBackgroungColors
                  : BColors.klightBackgroungColors,
              padding: const EdgeInsets.all(10),
              activeColor:
                  dark ? BColors.klightBackgroungColors : BColors.kPrimaryColor,
              duration: const Duration(milliseconds: 1000),
              gap: 10,
              key: navigationKey,
              color: Colors.grey,
              onTabChange: (currentIndex) =>
                  setState((() => this.currentIndex = currentIndex)),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Acceuil',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favoris',
                ),
                GButton(
                  icon: Icons.add,
                  text: 'Ajouter',
                ),
                GButton(
                  icon: CupertinoIcons.tickets,
                  text: 'Tickets',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profil',
                ),
              ],
            ),
          )),
    );
  }
}
