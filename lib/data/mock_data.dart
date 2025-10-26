import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/image_strings.dart';
import '../dashboard/models/appointment_model.dart';
import '../dashboard/models/doctor_model.dart';
import '../dashboard/models/medical_center_model.dart';
import '../dashboard/models/category_model.dart';

class MockData {
  // Current Appointment
  static Appointment getCurrentAppointment() {
    return Appointment(
      id: '1',
      doctorName: 'Jason Smith',
      doctorSpecialty: 'Dentist',
      doctorLocation: 'ABC Medical Center',
      doctorImagePath: AImages.doctor1,
      appointmentDate: DateTime(2021, 10, 7),
      appointmentTime: '08:00 AM - 10:00 AM',
    );
  }

  // Medical Categories
  static List<MedicalCategory> getCategories() {
    return [
      MedicalCategory(
        id: '1',
        name: 'General',
        icon: AImages.general,

        iconColor: AColors.primary,
      ),
      MedicalCategory(
        id: '2',
        name: 'Heart',
        icon: AImages.heart,

        iconColor: Colors.red,
      ),
      MedicalCategory(
        id: '3',
        name: 'Dentist',
        icon: AImages.dentist,

        iconColor: Colors.purple,
      ),
      MedicalCategory(
        id: '4',
        name: 'Skin',
        icon: AImages.skin,

        iconColor: AColors.primary,
      ),
      MedicalCategory(
        id: '5',
        name: 'Stomach',
        icon: AImages.stomach,

        iconColor: Colors.orange,
      ),
      MedicalCategory(
        id: '6',
        name: 'Lung',
        icon: AImages.lungs,

        iconColor: Colors.green,
      ),
      MedicalCategory(
        id: '7',
        name: 'Bone',
        icon: AImages.bone,

        iconColor: Colors.amber,
      ),
      MedicalCategory(
        id: '8',
        name: 'E.T.N',
        icon: AImages.etn,
        iconColor: Colors.deepPurple,
      ),
    ];
  }

  // Doctors List
  static List<Doctor> getDoctors() {
    return [
      Doctor(
        id: '1',
        name: 'Clark Mark',
        specialty: 'Dentist',
        experienceYears: 4,
        rating: 4.8,
        reviewCount: 40,
        imagePath: AImages.doctor1,
        availabilityDay: 'Tomorrow',
        availabilityTime: '10:30am - 05:00pm',
        location: 'Horizon Medical Center',
        distance: '2km Away',
        isFavorite: false,
      ),
      Doctor(
        id: '2',
        name: 'White Mond',
        specialty: 'Neurologist',
        experienceYears: 15,
        rating: 4.9,
        reviewCount: 440,
        imagePath: AImages.doctor1,
        availabilityDay: 'Tomorrow',
        availabilityTime: '10:30am - 05:00pm',
        location: 'Horizon Medical Center',
        distance: '2km Away',
        isFavorite: true,
      ),
      Doctor(
        id: '3',
        name: 'Wilson Herwitz',
        specialty: 'General Practitioner',
        experienceYears: 10,
        rating: 4.9,
        reviewCount: 440,
        imagePath: AImages.doctor1,
        availabilityDay: 'Tomorrow',
        availabilityTime: '10:30am - 05:00pm',
        location: 'Horizon Medical Center',
        distance: '2km Away',
        isFavorite: false,
      ),
    ];
  }

  // Medical Centers
  static List<MedicalCenter> getMedicalCenters() {
    return [
      MedicalCenter(
        id: '1',
        name: 'Tyna Medical Center',
        location: 'Udomsak, Bang Na',
        address: 'Bangkok, Thailand',
        rating: 4.8,
        reviewCount: 2000,
        imagePath: AImages.medicalCenter1,
        isFavorite: false,
      ),
      MedicalCenter(
        id: '2',
        name: 'Tyna Medical Center',
        location: 'Udomsak, Bang Na',
        address: 'Bangkok, Thailand',
        rating: 4.8,
        reviewCount: 2000,
        imagePath: AImages.medicalCenter2,
        isFavorite: false,
      ),
    ];
  }
}
