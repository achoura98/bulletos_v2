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
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20.h),
              Text(
                  textAlign: TextAlign.center,
                  BTexts.BSuccesstext2,
                  style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              CustomButton(
                color: BColors.kPrimaryColor,
                text: 'Acceuil',
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: (() =>
              Navigator.pushNamed(context, InterestScreen.routeName)),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            side: BorderSide.none,
          ),
          child: Text(text.toUpperCase(),
              style: const TextStyle().copyWith(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: BColors.kdarkTextColors)),
        ),
      ),
    );
  }
}
