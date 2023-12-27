import 'dart:async';

import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/helper/helper_function.dart';
import 'package:bulletos_v2/src/presentation/views/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6),
        () => Navigator.pushNamed(context, OnboardingScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 60.0),
                    Text(
                      "BULLETOS",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text("Bienvenue sur Bulletos, Let's go!",
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(
                      height: 60.0,
                    ),
                    // ignore: unrelated_type_equality_checks
                    dark
                        ? Image.asset('assets/logo/dark_boleto_logo.png')
                        : Image.asset('assets/logo/light_boleto_logo.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SpinKitCubeGrid(
                color: dark
                    ? BColors.kDarkPrimaryTextColor
                    : BColors.kPrimaryColor,
              ),
              const SizedBox(
                height: 90.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
