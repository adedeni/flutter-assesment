import 'package:flutter/material.dart';
import '../../../common/custom_shapes/containers/rounded_container.dart';
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
      width: 180,
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 8.0,
            spreadRadius: 0.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with Favorite Icon
          Stack(
            children: [
              ARoundedContainer(
                height: 138,
                width: 158,
                padding: EdgeInsets.all(ASizes.sm),
                backgroundColor: AColors.white,
                radius: ASizes.sm,

                child: Image(image: AssetImage(AImages.hospital2)),
              ),
              Positioned(
                top: ASizes.sm,
                right: ASizes.sm,
                child: Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.transparent.withAlpha(77),
                    shape: BoxShape.rectangle,
                  ),
                  child: Icon(
                    center.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: center.isFavorite ? Colors.red : AColors.white,
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
                  style: Theme.of(context).textTheme.displayLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  center.location,
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: ASizes.xs),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '+${center.reviewCount}k Review',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      children: [
                        Text(
                          '${center.rating}',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w500),
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
