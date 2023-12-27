import 'package:bulletos_v2/config/constants/constant_sizes.dart';
import 'package:bulletos_v2/src/presentation/views/splash/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    //methode call
    BSizes().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
