import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/constant_sizes.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/constants/text_string.dart';
import '../../../../../helper/helper_function.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int tag = 1;

  List<String> tags = [];

  List<String> options = [
    'Business',
    'Music',
    'Religion',
    'Natures',
    'Sciences',
    'Sport',
    'Education',
    'Fitness',
    'Gastronomies',
    'Dance',
    'Gaming',
    "Theatre",
    'Comedie',
    'Photographie'
  ];
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: SizedBox(
              child: Column(
                children: [
                  Text(BTexts.BInterestText1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium),
                  Padding(
                    padding: EdgeInsets.all(BSizes.sm),
                    child: Text(BTexts.BInterestText2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        ChipsChoice<String>.multiple(
                          value: tags,
                          onChanged: (value) => setState(() => tags = value),
                          choiceItems: C2Choice.listFrom(
                              source: options,
                              value: (i, v) => v,
                              label: (i, v) => v),
                          choiceActiveStyle: C2ChoiceStyle(
                              color: dark
                                  ? BColors.kdarkTextColors
                                  : BColors.kPrimaryColor,
                              borderColor: BColors.kPrimaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          choiceStyle: C2ChoiceStyle(
                              color: dark
                                  ? BColors.kPrimaryColor
                                  : BColors.kLightTextColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          wrapped: true,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
