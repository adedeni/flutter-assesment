import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ACircularImage extends StatelessWidget {
  const ACircularImage({
    super.key,
    this.fit = BoxFit.fill,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
  });

  final BoxFit fit;
  final String image;
  final Color? overlayColor, backgroundColor;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image:AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
