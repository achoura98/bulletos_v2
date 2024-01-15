import 'package:flutter/material.dart';
import 'custom_curved.dart';

class BCurvedEdgeWidget extends StatelessWidget {
  const BCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BCustomCurvedEdges(),
      child: child,
    );
  }
}
