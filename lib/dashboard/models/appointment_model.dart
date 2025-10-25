class Appointment {
  final String id;
  final String doctorName;
  final String doctorSpecialty;
  final String doctorLocation;
  final String doctorImagePath;
  final DateTime appointmentDate;
  final String appointmentTime;

  Appointment({
    required this.id,
    required this.doctorName,
    required this.doctorSpecialty,
    required this.doctorLocation,
    required this.doctorImagePath,
    required this.appointmentDate,
    required this.appointmentTime,
  });

  String get formattedDate {
    final months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return '${appointmentDate.day} ${months[appointmentDate.month - 1]} ${appointmentDate.year}';
  }
}