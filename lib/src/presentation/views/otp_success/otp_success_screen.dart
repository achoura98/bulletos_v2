import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../interest/interest_screen.dart';

class OtpVerificationSuccess extends StatelessWidget {
  static String routeName = "/otp_success";

  const OtpVerificationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("assets/images/verified/verifed.png"),
              ),
              SizedBox(height: 20.h),
              Text(
                BTexts.BSuccesstext1,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 20.h),
              Text(BTexts.BSuccesstext2,
                  style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (() =>
                        Navigator.pushNamed(context, InterestScreen.routeName)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: BColors.kPrimaryColor,
                      side: BorderSide.none,
                    ),
                    child: Text("Acceuil".toUpperCase(),
                        style: const TextStyle().copyWith(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            color: BColors.kDarkPrimaryTextColor)),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
