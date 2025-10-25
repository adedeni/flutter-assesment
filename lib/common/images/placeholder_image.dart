import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class PlaceholderImage extends StatelessWidget {
  const PlaceholderImage({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 12,
    this.text,
    this.color,
  });

  final double width;
  final double height;
  final double borderRadius;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? AColors.grey,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: text != null
            ? Text(
                text!,
                style: TextStyle(
                  color: AColors.textWhite,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Icon(
                Icons.person,
                size: width * 0.5,
                color: AColors.white.withAlpha(125),
              ),
      ),
    );
  }
}
