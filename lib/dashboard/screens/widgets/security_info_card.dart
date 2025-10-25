import 'package:flutter/material.dart';
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
            child: Icon(
              Icons.shield_outlined,
              color: AColors.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: ASizes.md),
          Expanded(
            child: Text(
              'Information shared via forms is encrypted and can only be viewed by those you share it with.',
              style: TextStyle(
                fontSize: 12,
                color: AColors.textPrimary,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}