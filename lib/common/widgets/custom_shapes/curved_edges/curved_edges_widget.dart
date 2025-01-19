import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MyCurvedWidget extends StatelessWidget {
  const MyCurvedWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomCurvedEdges(),
      child: child,
    );
  }
}