import 'package:flutter/material.dart';
import '../../../common/icons/svg_icons.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../../models/medical_center_model.dart';

class MedicalCenterCard extends StatelessWidget {
  const MedicalCenterCard({super.key, required this.center});

  final MedicalCenter center;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 8,
            spreadRadius: 0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with Favorite Icon
          Stack(
            children: [
              // Image Container
              Padding(
                padding: const EdgeInsets.all(ASizes.sm + 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ASizes.borderRadiusLg - 6),
                  ),
                  child: Container(
                    height: 137,
                    width: double.infinity,
                    color: AColors.grey.withAlpha(25),
                    child: Image.asset(
                      AImages.hospital2,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback if image not found
                        return Container(
                          color: AColors.grey.withAlpha(50),
                          child: Icon(
                            Icons.business,
                            size: 60,
                            color: AColors.textSecondary.withAlpha(77),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // Favorite Icon
              Positioned(
                top: ASizes.lg - 5,
                right: ASizes.lg - 5,
                child: Container(
                  padding: const EdgeInsets.all(ASizes.sm),
                  decoration: BoxDecoration(
                    color: Colors.transparent.withAlpha(77),
                    borderRadius: BorderRadius.circular(ASizes.sm),
                    shape: BoxShape.rectangle,
                  ),
                  child: Icon(
                    center.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: center.isFavorite ? Colors.red : AColors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          // Info Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: ASizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Center Name
                Text(
                  center.name,
                  style: Theme.of(context).textTheme.displayLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Location
                Text(
                  center.location,
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: ASizes.sm),
                // Rating and Reviews
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Reviews Count
                    Text(
                      '+${center.reviewCount}K Review',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    // Rating with Star
                    Row(
                      children: [
                        Text(
                          '${center.rating}',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(
                                fontWeight: FontWeight.w500,
                                color: AColors.textAccent,
                              ),
                        ),
                        const SizedBox(width: 4),
                        ASvgIcon(
                          svgIconName: AImages.star,
                          width: 16,
                          height: 16,
                        ),
                      ],
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
