class MedicalCenter {
  final String id;
  final String name;
  final String location;
  final String address;
  final double rating;
  final int reviewCount;
  final String imagePath;
  final bool isFavorite;

  MedicalCenter({
    required this.id,
    required this.name,
    required this.location,
    required this.address,
    required this.rating,
    required this.reviewCount,
    required this.imagePath,
    this.isFavorite = false,
  });
}
