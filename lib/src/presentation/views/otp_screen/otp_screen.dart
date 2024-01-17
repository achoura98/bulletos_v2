import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/src/presentation/views/otp_success/otp_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../config/constants/constant_image.dart';
import '../../../../config/constants/constant_sizes.dart';
import '../../../../config/constants/text_string.dart';
import '../../../../helper/helper_function.dart';
import '../sign_up/components/spacing_styles.dart';

class OtpScreen extends StatefulWidget {
  static String routeName = "/otp";
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: BSpacingStyle.paddingWithAppBarWeight,
            child: Column(
              children: [
                Column(
                  children: [
                    Image(
                        height: 150.h,
                        image: AssetImage(
                            dark ? BImages.darkAppLogo : BImages.lightAppLogo)),
                    Text(BTexts.tVerificationOtp,
                        style: Theme.of(context).textTheme.headlineMedium),
                    SizedBox(height: BSizes.sm),
                    Text(BTexts.tOtpverificationtext1,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                SizedBox(height: 40.h),
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50.0,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: dark ? BColors.white : BColors.kPrimaryColor),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                      focusBorderColor:
                          dark ? BColors.white : BColors.kPrimaryColor,
                      borderColor: BColors.kPrimaryColor),
                  onCompleted: (pin) {
                    // Handle completed OTP input
                  },
                ),
                SizedBox(height: BSizes.md),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      BTexts.tOtpverificationtext2,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(height: BSizes.dividerHeight),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => const OtpVerificationSuccess()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: BColors.kLightPrimaryButtonColor,
                          side: BorderSide.none,
                        ),
                        child: Text(
                          BTexts.tOtpverificationtext3.toUpperCase(),
                          style: const TextStyle().copyWith(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: BColors.kDarkPrimaryTextColor),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
