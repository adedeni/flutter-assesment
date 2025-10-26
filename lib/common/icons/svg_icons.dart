import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ASvgIcon extends StatelessWidget {
  const ASvgIcon({
    super.key,
    required this.svgIconName,
    this.width,
    this.height,
    this.iconColor,
  });

  final String svgIconName;
  final double? width;
  final double? height;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIconName,
      width: width,
      height: height,
      colorFilter: iconColor != null
          ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
          : null,
    );
  }
}
