class Food {
  const Food({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.restaurantId,
    required this.currentPrice,
    required this.previousPrice,
    required this.deliveryFee,
    required this.amountLeft,
  });

  final String id, name, imageUrl, restaurantId;
  final double currentPrice, previousPrice, deliveryFee;
  final int amountLeft;
}
