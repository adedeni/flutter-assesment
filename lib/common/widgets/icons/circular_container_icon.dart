import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class ACircularContainerIcon extends StatelessWidget {
  const ACircularContainerIcon({
    super.key,
    this.width,
    this.height,
    this.size = ASizes.lg,
    this.color,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
  });

  final double? width, height, size;
  final Color? color, backgroundColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : AColors.white..withAlpha(230),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
