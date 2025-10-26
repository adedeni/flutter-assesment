import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import 'package:paxform/constants/image_strings.dart';
import '../../../common/images/circular_image.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/doctor_model.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.md),
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(ASizes.fontSizeSm),
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
          // Header Row: Doctor Image + Info + Favorite
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor Image
              ACircularImage(width: 38, height: 38, image: doctor.imagePath),
              const SizedBox(width: ASizes.sm),
              // Doctor Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AColors.textPrimary,
                      ),
                    ),
                    Text(
                      '${doctor.specialty} | ${doctor.experienceYears} Years',
                      style: TextStyle(
                        fontSize: 13,
                        color: AColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          '${doctor.rating}',
                          style: Theme.of(context).textTheme.titleSmall!
                              .copyWith(color: Color(0XFF33384B)),
                        ),
                        SizedBox(width: ASizes.xs),
                        ASvgIcon(
                          svgIconName: AImages.star,
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 4),

                        const SizedBox(width: 4),
                        Text(
                          '${doctor.reviewCount} Reviews',
                          style: TextStyle(
                            fontSize: 13,
                            color: AColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Favorite Icon
              Icon(
                doctor.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: doctor.isFavorite
                    ? Color(0xFFFF525E)
                    : Color(0xFFD5D5D5),
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: ASizes.sm),
          // Bottom Info
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Availability
              ASvgIcon(
                svgIconName: AImages.calendar2,
                width: 18,
                height: 18,
                iconColor: AColors.background,
              ),
              const SizedBox(width: ASizes.sm),
              Text(
                doctor.availabilityDay,
                style: Theme.of(
                  context,
                ).textTheme.displayMedium!.copyWith(color: AColors.background),
              ),
              const SizedBox(width: ASizes.sm),
              // Time
              ASvgIcon(
                svgIconName: AImages.clock,
                width: 18,
                height: 18,
                iconColor: AColors.background,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  doctor.availabilityTime,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AColors.background,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.sm),
          Divider(height: 1.5, color: Color(0xFFF2F4F5)),
          const SizedBox(height: ASizes.sm),
          // Location
          Row(
            children: [
              ASvgIcon(
                svgIconName: AImages.location,
                width: 18,
                height: 18,
                iconColor: AColors.location,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  doctor.location,
                  style: Theme.of(
                    context,
                  ).textTheme.displayMedium!.copyWith(color: AColors.location),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: ASizes.sm),
              Text(
                doctor.distance,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
