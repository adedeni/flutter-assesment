import 'package:flutter/material.dart';

import 'package:paxform/common/icons/svg_icons.dart';

import 'package:paxform/constants/image_strings.dart';

import '../../../constants/colors.dart';

import '../../../constants/sizes.dart';

class SecurityInfoCard extends StatelessWidget {
  const SecurityInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.md),

      decoration: BoxDecoration(
        color: AColors.primary.withAlpha(25),

        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),

        border: Border.all(color: AColors.primary.withAlpha(56)),
      ),

      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(ASizes.sm),

            decoration: BoxDecoration(
              color: AColors.primary.withAlpha(25),

              shape: BoxShape.circle,
            ),

            child: ASvgIcon(svgIconName: AImages.shield),
          ),

          const SizedBox(width: ASizes.md),

          Expanded(
            child: Center(
              child: Text(
                'Information shared via forms is encrypted and can only be viewed by those you share it with.',

                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: AColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
