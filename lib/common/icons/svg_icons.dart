import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';

class ASvgIcon extends StatelessWidget {
  const ASvgIcon({
    super.key,
    this.width,
    this.height,
    this.iconColor,
    required this.svgIconName,
  });

  final double? width, height;
  final Color? iconColor; 
  final String svgIconName;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIconName,
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(
        iconColor ?? AColors.white,
        BlendMode.srcIn,
      ),
    );
  }
}
