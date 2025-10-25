import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/doctor_model.dart';


class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.md),
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
        border: Border.all(color: AColors.borderPrimary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row: Doctor Image + Info + Favorite
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor Image
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AColors.grey.withAlpha(77),
                  borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
                ),
                child: Icon(
                  Icons.person,
                  color: AColors.textSecondary,
                  size: 32,
                ),
              ),
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
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          '${doctor.rating}',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AColors.textPrimary,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(Icons.circle, size: 4, color: AColors.textSecondary),
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
                color: doctor.isFavorite ? Colors.red : AColors.textSecondary,
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: ASizes.sm),
          const Divider(),
          const SizedBox(height: ASizes.sm),
          // Bottom Info
          Row(
            children: [
              // Availability
              Icon(Iconsax.calendar, size: 16, color: AColors.primary),
              const SizedBox(width: 4),
              Text(
                doctor.availabilityDay,
                style: TextStyle(
                  fontSize: 12,
                  color: AColors.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: ASizes.sm),
              // Time
              Icon(Iconsax.clock, size: 16, color: AColors.textSecondary),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  doctor.availabilityTime,
                  style: TextStyle(
                    fontSize: 12,
                    color: AColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.xs),
          // Location
          Row(
            children: [
              Icon(Iconsax.location, size: 16, color: Colors.green),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  doctor.location,
                  style: TextStyle(
                    fontSize: 12,
                    color: AColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: ASizes.sm),
              Text(
                doctor.distance,
                style: TextStyle(
                  fontSize: 12,
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