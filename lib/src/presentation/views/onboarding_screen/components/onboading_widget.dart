import 'package:bulletos_v2/models/events/onboading_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import '../../../../../helper/helper_function.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final dark = BHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(30),
      color: model.bgColors,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                model.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                model.subtitle,
                textAlign: TextAlign.center,
                maxLines: 4,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Text(model.counterText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          const SizedBox(height: 80.0)
        ],
      ),
    );
  }
}
