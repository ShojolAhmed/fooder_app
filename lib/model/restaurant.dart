class Restaurant {
  const Restaurant({
    required this.id,
    required this.name,
    required this.areaLocation,
    required this.cityLocation,
    required this.openingTime,
    required this.closingTime,
    required this.imageUrl,
    required this.rating,
    required this.distance,
    required this.isVerified,
  });

  final String id,
      name,
      areaLocation,
      cityLocation,
      openingTime,
      closingTime,
      imageUrl;
  final double rating, distance;
  final bool isVerified;
}
