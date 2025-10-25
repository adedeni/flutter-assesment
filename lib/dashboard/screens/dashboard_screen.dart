import 'package:flutter/material.dart';
import '../../common/appbar/appbar.dart';
import '../../common/custom_shapes/containers/search_containers.dart';
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
      backgroundColor: AColors.background,
      appBar: AAppBar(
        title: Text(
          'Medical Center',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AColors.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list, color: AColors.textPrimary),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: AColors.textPrimary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              const SizedBox(height: ASizes.spaceBtwSections),

              // Current Appointment Card
              AppointmentCard(appointment: appointment),
              const SizedBox(height: ASizes.spaceBtwSections),

              // Quick Actions
              _buildQuickActions(),
              const SizedBox(height: ASizes.spaceBtwSections),

              // Categories Section
              ASectionHeading(
                title: 'Categories',
                showActionButton: true,
                buttonTitle: 'See All',
                onPressed: () {},
              ),
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
                showActionButton: true,
                buttonTitle: 'See All',
                onPressed: () {},
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              ...doctors.map(
                (doctor) => Padding(
                  padding: const EdgeInsets.only(bottom: ASizes.spaceBtwItems),
                  child: DoctorCard(doctor: doctor),
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              // Nearest Medical Center Section
              ASectionHeading(
                title: 'Nearest Medical Center',
                showActionButton: true,
                buttonTitle: 'See All',
                onPressed: () {},
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              SizedBox(
                height: 220,
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
              const SizedBox(height: ASizes.spaceBtwSections),

              // Bottom Security Info
              const SecurityInfoCard(),
              const SizedBox(height: ASizes.defaultSpace),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return ASearchContainer(
      text: 'Search',
      showBackground: true,
      showBorder: true,
      padding: EdgeInsets.zero,
      onTap: () {},
    );
  }

  Widget _buildQuickActions() {
    return Row(
      children: [
        Expanded(
          child: QuickActionButton(
            icon: Icons.medical_services_outlined,
            title: 'Book Doctor\nAppointment',
            subtitle: 'Find a Doctor or\nSpecialist',
            backgroundColor: AColors.categoryBlue,
            iconColor: AColors.primary,
            onTap: () {},
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Expanded(
          child: QuickActionButton(
            icon: Icons.local_hospital_outlined,
            title: 'Book Hospital\nAppointment',
            subtitle: 'Locate nearby hospital\nto visit',
            backgroundColor: AColors.categoryGreen,
            iconColor: Colors.green,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
