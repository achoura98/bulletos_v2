import 'package:flutter/material.dart';

import '../../../../../config/constants/constant_colors.dart';
import 'circular_container.dart';
import 'curved_edge_widget.dart';

class BPrimaryHeaderContainer extends StatelessWidget {
  const BPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BCurvedEdgeWidget(
      child: Container(
        color: BColors.kPrimaryColor,
        padding: const EdgeInsets.only(bottom: 0),
        height: 400,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: BCircularContainer(
                    backgroundColor: BColors.textWhite.withOpacity(0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: BCircularContainer(
                    backgroundColor: BColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
