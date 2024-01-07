import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.w,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: BColors.kPrimaryColor,
                      backgroundImage: AssetImage(
                          "assets/images/profil/muslim baby girl.png"),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Hello Jaken",
                          style: Theme.of(context).textTheme.headlineSmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
