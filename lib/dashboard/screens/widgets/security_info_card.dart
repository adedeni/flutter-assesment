import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import 'package:paxform/constants/image_strings.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class SecurityInfoCard extends StatelessWidget {
  const SecurityInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ASizes.spaceBtwItems),
        // Shield Icon
        ASvgIcon(svgIconName: AImages.shield, width: 52, height: 52),
        const SizedBox(height: ASizes.md),
        // Text
        Text(
          'Information shared via forms is encrypted and can only be viewed by those you share it with.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AColors.white,
            height: 1.9,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: ASizes.spaceBtwSections),
      ],
    );
  }
}
