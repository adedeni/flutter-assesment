import 'package:flutter/material.dart';

import 'package:paxform/common/icons/svg_icons.dart';

import 'package:paxform/common/layouts/appointment_slider.dart';

import 'package:paxform/constants/image_strings.dart';

import '../../common/appbar/appbar.dart';

import '../../common/appbar/curve_appbar.dart';

import '../../common/appbar/curved_footer.dart';
import '../../common/layouts/grid_layout.dart';

import '../../common/texts/section_heading.dart';

import '../../constants/colors.dart';

import '../../constants/sizes.dart';

import '../../data/mock_data.dart';

import 'widgets/action_button.dart';

import 'widgets/appointment_card.dart';

import 'widgets/category_item.dart';

import 'widgets/doctor_card.dart';
import 'widgets/medical_center_card.dart';

import 'widgets/security_info_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Load mock data

    final appointment = MockData.getCurrentAppointment();

    final categories = MockData.getCategories();

    final doctors = MockData.getDoctors();

    final medicalCenters = MockData.getMedicalCenters();

    return Scaffold(
      backgroundColor: AColors.primary,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Curved Header AppBar
            CurvedAppBarHeader(
              child: Column(
                children: [
                  const SizedBox(height: ASizes.spaceBtwItems),
                  // AppBar
                  AAppBar(title: Text('Medical Center')),
                  const SizedBox(height: ASizes.spaceBtwItems),
                ],
              ),
            ),

            // Main Content
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ASizes.defaultSpace,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Center(
                    child: Image(image: AssetImage(AImages.bottomBarSwitch)),
                  ),

                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: ASizes.md),

                    child: Row(
                      children: [
                        Expanded(child: const SearchBar()),

                        const SizedBox(width: ASizes.spaceBtwItems),

                        // Picture search container
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: ASizes.md / 1.5,

                            vertical: ASizes.md / 1.5,
                          ),

                          decoration: BoxDecoration(
                            color: AColors.lightContainer,

                            borderRadius: BorderRadius.circular(
                              ASizes.borderRadiusLg,
                            ),
                          ),

                          child: ASvgIcon(
                            svgIconName: AImages.gallery,

                            iconColor: AColors.background,

                            height: ASizes.iconMd * 1.5,

                            width: ASizes.iconMd * 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Current Appointment Card
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: ASizes.md),

                    child: AppointmentCard(appointment: appointment),
                  ),

                  AppointmentSliderIndicator(currentIndex: 0, totalCount: 3),

                  const SizedBox(height: ASizes.spaceBtwItems),

                  // Quick Actions
                  const QuickActions(),

                  const SizedBox(height: ASizes.spaceBtwItems),

                  // Categories Section
                  ASectionHeading(title: 'Categories', buttonTitle: 'See All'),

                  const SizedBox(height: ASizes.spaceBtwItems),

                  AGridLayout(
                    itemCount: categories.length,

                    crossAxisCount: 4,

                    mainAxisExtent: 90,

                    itemBuilder: (context, index) {
                      return CategoryItem(category: categories[index]);
                    },
                  ),

                  const SizedBox(height: ASizes.spaceBtwSections),

                  // Nearest Doctors Section
                  ASectionHeading(
                    title: 'Nearest Doctors',

                    buttonTitle: 'See All',
                  ),

                  const SizedBox(height: ASizes.spaceBtwItems),

                  ...doctors.map(
                    (doctor) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: ASizes.spaceBtwItems,
                      ),

                      child: DoctorCard(doctor: doctor),
                    ),
                  ),

                  // Nearest Doctors Section
                  ASectionHeading(
                    title: 'Nearest Medical Center',
                    buttonTitle: 'See All',
                    textColor: AColors.background,
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: medicalCenters.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: ASizes.spaceBtwItems),
                      itemBuilder: (context, index) {
                        return MedicalCenterCard(center: medicalCenters[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),
                ],
              ),
            ),

            // Bottom Security Info with Curved Footer
            CurvedFooter(child: SecurityInfoCard()),
          ],
        ),
      ),
    );
  }
}

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: QuickActionButton(
            icon: AImages.appointment,
            title: 'Book Doctor\nAppointment',
            subtitle: 'Find a Doctor or\nSpecialist',
            backgroundColor: AColors.categoryColor1,
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Expanded(
          child: QuickActionButton(
            icon: AImages.hospital,
            title: 'Book Hospital\nAppointment',
            subtitle: 'Locate nearby hospital to visit',
            backgroundColor: AColors.categoryColor2,
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: ASizes.lg,
        vertical: ASizes.md,
      ),
      decoration: BoxDecoration(
        color: AColors.lightContainer,
        borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
      ),
      child: Row(
        children: [
          ASvgIcon(
            svgIconName: AImages.searchIcon,
            iconColor: AColors.black,
            height: ASizes.iconMd,
            width: ASizes.iconMd,
          ),
          const SizedBox(width: ASizes.sm),
          Expanded(
            child: Text(
              'Search',

              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          ASvgIcon(
            svgIconName: AImages.settingIcon,
            iconColor: AColors.black,
            height: ASizes.iconMd,
            width: ASizes.iconMd,
          ),
        ],
      ),
    );
  }
}
