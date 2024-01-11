import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/constant_image.dart';
import 'package:bulletos_v2/config/constants/text_string.dart';
import 'package:bulletos_v2/src/presentation/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'package:bulletos_v2/src/presentation/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:bulletos_v2/src/presentation/bloc/onboarding_bloc/onboarding_state.dart';
import 'package:bulletos_v2/src/presentation/views/sign_up/sign_up_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = "/onboarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BColors.tOnboardingScreen1Colors,
      child: Scaffold(
        body: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      // ignore: avoid_print
                      print("index value is $index");
                      BlocProvider.of<OnboardingBloc>(context)
                          .add(OnboardingEvent());
                      state.page = index;
                    },
                    children: [
                      _page(
                          1,
                          context,
                          "Suivant",
                          BTexts.tOnboardingTitle1,
                          BTexts.tOnboardingSubTitle1,
                          BImages.onboardingImage1),
                      _page(
                          2,
                          context,
                          "Suivant",
                          BTexts.tOnboardingTitle2,
                          BTexts.tOnboardingSubTitle2,
                          BImages.onboardingImage2),
                      _page(
                          3,
                          context,
                          "Commencons",
                          BTexts.tOnboardingTitle3,
                          BTexts.tOnboardingSubTitle3,
                          BImages.onboardingImage3),
                    ],
                  ),
                  Positioned(
                      bottom: 140.h,
                      child: DotsIndicator(
                        position: state.page,
                        dotsCount: 3,
                        mainAxisAlignment: MainAxisAlignment.center,
                        decorator: DotsDecorator(
                          color: BColors.kPrimaryColor,
                          activeColor: BColors.kSecondaryColor,
                          size: const Size.square(8.0),
                          activeSize: const Size(18.0, 8.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 305.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SizedBox(
            //height: 120.h,
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: BColors.kLightPrimaryTextColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: BColors.kLightPrimaryTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            if (index < 3) {
              //animation
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            } else {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUpScreen()));

              // Navigator.of(context)
              //     .pushNamedAndRemoveUntil("sign_up", (route) => false);
            }
          },
          child: Container(
            margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 50.h),
            width: 328.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: BColors.kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15.w)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1))
                ]),
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(
                    color: BColors.klightBackgroungColors,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        )
      ],
    );
  }
}
