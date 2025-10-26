import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import '../../../constants/sizes.dart';

class QuickActionButton extends StatelessWidget {
  const QuickActionButton({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  });

  final String icon;
  final String title;
  final String subtitle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.md),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(color: backgroundColor),
            child: ASvgIcon(svgIconName: icon, width: 42, height: 42),
          ),
          const SizedBox(height: ASizes.md),
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 4),
          Text(subtitle, style: Theme.of(context).textTheme.displaySmall),
        ],
      ),
    );
  }
}
