import 'package:flutter/material.dart';
import 'package:paxform/constants/sizes.dart';
import '../../constants/colors.dart';
import '../custom_shapes/curve_edges/curve_edges_widget.dart';

class CurvedAppBarHeader extends StatelessWidget {
  const CurvedAppBarHeader({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACurveEdgesWidget(
      child: Container(
        color: AColors.background,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: ASizes.appBarHeight * 2.5,
          child: Stack(
            children: [
              // Content
              child,
            ],
          ),
        ),
      ),
    );
  }
}
