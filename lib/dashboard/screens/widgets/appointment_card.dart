import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/appointment_model.dart';


class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AColors.primary, AColors.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
      ),
      child: Column(
        children: [
          // Doctor Info Row
          Row(
            children: [
              // Doctor Image
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AColors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: AColors.primary,
                  size: 28,
                ),
              ),
              const SizedBox(width: ASizes.sm),
              // Doctor Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointment.doctorName,
                      style: TextStyle(
                        color: AColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${appointment.doctorSpecialty} • ${appointment.doctorLocation}',
                      style: TextStyle(
                        color: AColors.white.withAlpha(225),
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.md),
          // Date, Time, and Navigation Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Date
              Row(
                children: [
                  Icon(
                    Iconsax.calendar,
                    color: AColors.white,
                    size: 18,
                  ),
                  const SizedBox(width: ASizes.xs),
                  Text(
                    appointment.formattedDate,
                    style: TextStyle(
                      color: AColors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              // Time
              Row(
                children: [
                  Icon(
                    Iconsax.clock,
                    color: AColors.white,
                    size: 18,
                  ),
                  const SizedBox(width: ASizes.xs),
                  Text(
                    appointment.appointmentTime,
                    style: TextStyle(
                      color: AColors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              // Navigation Button
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AColors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: AColors.primary,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}