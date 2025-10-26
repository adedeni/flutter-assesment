import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import 'package:paxform/common/images/circular_image.dart';
import 'package:paxform/constants/image_strings.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/appointment_model.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(ASizes.md),
          decoration: BoxDecoration(
            color: AColors.cardBackground,
            borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
          ),
          child: Column(
            children: [
              // Doctor Info Row
              Container(
                width: double.maxFinite,

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AColors.white,
                  borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
                ),
                child: Row(
                  children: [
                    ACircularImage(
                      width: 38,
                      height: 38,
                      image: AImages.doctor1,
                    ),
                    SizedBox(width: ASizes.sm + 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jason Smith',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: <TextSpan>[
                              TextSpan(text: 'Dentist '),
                              TextSpan(text: ' • '),
                              TextSpan(text: 'ABC Medical Center '),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ASizes.lg),
              // Date, Time, and Navigation Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Date
                      Row(
                        children: [
                          ASvgIcon(
                            svgIconName: AImages.calendar,
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(width: ASizes.sm),
                          Text(
                            appointment.formattedDate,
                            style: Theme.of(context).textTheme.labelLarge!
                                .copyWith(color: AColors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: ASizes.sm),
                      // Time
                      Row(
                        children: [
                          ASvgIcon(
                            svgIconName: AImages.clock,
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(width: ASizes.sm),
                          Text(
                            appointment.appointmentTime,
                            style: Theme.of(context).textTheme.labelLarge!
                                .copyWith(color: AColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Navigation Button
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: AColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: ASvgIcon(svgIconName: AImages.navigation),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 105,
          left: -1,
          child: ASvgIcon(svgIconName: AImages.zigZag),
        ),
      ],
    );
  }
}
