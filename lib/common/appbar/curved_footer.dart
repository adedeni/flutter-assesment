import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../custom_shapes/curve_edges/inverted_curve_widget.dart';

class CurvedFooter extends StatelessWidget {
  const CurvedFooter({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InvertedCurveWidget(
      child: Container(
        width: double.infinity,
        color: AColors.background,
        padding: const EdgeInsets.only(
          top: ASizes.lg * 1.5,
          bottom: ASizes.lg,
          left: ASizes.defaultSpace,
          right: ASizes.defaultSpace,
        ),
        child: child,
      ),
    );
  }
}
