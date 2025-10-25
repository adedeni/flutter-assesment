import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/medical_center_model.dart';

class MedicalCenterCard extends StatelessWidget {
  const MedicalCenterCard({
    super.key,
    required this.center,
  });

  final MedicalCenter center;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
        border: Border.all(color: AColors.borderPrimary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with Favorite Icon
          Stack(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: AColors.grey.withAlpha(77),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ASizes.borderRadiusLg),
                    topRight: Radius.circular(ASizes.borderRadiusLg),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.business,
                    size: 48,
                    color: AColors.textSecondary.withAlpha(128),
                  ),
                ),
              ),
              Positioned(
                top: ASizes.sm,
                right: ASizes.sm,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    center.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: center.isFavorite ? Colors.red : AColors.textSecondary,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          // Info Section
          Padding(
            padding: const EdgeInsets.all(ASizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  center.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AColors.textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  center.location,
                  style: TextStyle(
                    fontSize: 12,
                    color: AColors.textSecondary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: ASizes.xs),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      '${center.rating}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '+${center.reviewCount}k Review',
                      style: TextStyle(
                        fontSize: 12,
                        color: AColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}