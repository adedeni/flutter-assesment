import 'package:flutter/material.dart';
import 'package:paxform/constants/colors.dart';
import 'package:paxform/constants/sizes.dart';
import 'action_button.dart'; // Adjust this import path if needed

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the exact same code from your _buildQuickActions method
    return Row(
      children: [
        Expanded(
          child: QuickActionButton(
            icon: Icons.medical_services_outlined,
            title: 'Book Doctor\nAppointment',
            subtitle: 'Find a Doctor or\nSpecialist',
            backgroundColor: AColors.categoryColor1,
            iconColor: AColors.primary,
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Expanded(
          child: QuickActionButton(
            icon: Icons.local_hospital_outlined,
            title: 'Book Hospital\nAppointment',
            subtitle: 'Locate nearby hospital\nto visit',
            backgroundColor: AColors.categoryColor2,
            iconColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
