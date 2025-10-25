class Doctor {
  final String id;
  final String name;
  final String specialty;
  final int experienceYears;
  final double rating;
  final int reviewCount;
  final String imagePath;
  final String availabilityDay;
  final String availabilityTime;
  final String location;
  final String distance;
  final bool isFavorite;

  Doctor({
    required this.id,
    required this.name,
    required this.specialty,
    required this.experienceYears,
    required this.rating,
    required this.reviewCount,
    required this.imagePath,
    required this.availabilityDay,
    required this.availabilityTime,
    required this.location,
    required this.distance,
    this.isFavorite = false,
  });
}