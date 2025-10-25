import 'package:flutter/material.dart';
import 'curve_edges.dart';

class ACurveEdgesWidget extends StatelessWidget {
  const ACurveEdgesWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: ACustomCurveEdges(), child: child);
  }
}
