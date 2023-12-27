import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/constant_image.dart';
import 'package:bulletos_v2/config/constants/constant_sizes.dart';
import 'package:bulletos_v2/config/constants/text_string.dart';
import 'package:bulletos_v2/helper/helper_function.dart';
import 'package:bulletos_v2/src/presentation/views/sign_up/components/spacing_styles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../otp_screen/otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: 150.h,
                      image: AssetImage(
                          dark ? BImages.darkAppLogo : BImages.lightAppLogo)),
                  Text(
                    BTexts.tinscriptiontext1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: BSizes.sm),
                  Text(BTexts.tinscriptiontext2,
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 100.h,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: TextField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Telephone',
                      prefixIcon: const Icon(Iconsax.mobile5),
                      prefixIconColor: BColors.kPrimaryColor,
                      hintText: BTexts.kPhoneNumber,
                      prefix: CountryCodePicker(
                        onChanged: (value) {},
                        initialSelection: 'US',
                        favorite: const ['+228', '+1', '+39'],
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BColors.kPrimaryColor,
                    side: BorderSide.none,
                  ),
                  child: Text("Continuer".toUpperCase(),
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ),
            ],
          ),

          //form
        ),
      ),
    ));
  }
}
