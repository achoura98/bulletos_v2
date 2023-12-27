import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/text_string.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: SizedBox(
            child: Column(
              children: [
                Text(BTexts.BInterestText1,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(BTexts.BInterestText2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        )
      ],
    );
  }
}
