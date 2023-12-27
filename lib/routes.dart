import 'package:bulletos_v2/src/presentation/views/interest/interest_screen.dart';
import 'package:bulletos_v2/src/presentation/views/onboarding_screen/onboarding_screen.dart';
import 'package:bulletos_v2/src/presentation/views/otp_success/otp_success_screen.dart';
import 'package:bulletos_v2/src/presentation/views/sign_up/sign_up_screen.dart';
import 'package:bulletos_v2/src/presentation/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  OtpVerificationSuccess.routeName: (context) => const OtpVerificationSuccess(),
  InterestScreen.routeName: (context) => const InterestScreen(),
};
