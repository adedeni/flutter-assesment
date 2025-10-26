import 'package:flutter/material.dart';
import 'inverted_curve_edges.dart';

class InvertedCurveWidget extends StatelessWidget {
  const InvertedCurveWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: InvertedCurveEdges(), child: child);
  }
}
