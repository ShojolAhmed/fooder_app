import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class PromoItemInfo extends StatelessWidget {
  const PromoItemInfo({
    super.key,
    required this.title,
    required this.location,
    required this.currentPrice,
    required this.previousPrice,
    required this.amountLeft,
  });

  final String title;
  final String location;
  final double currentPrice;
  final double previousPrice;
  final int amountLeft;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kBorderRadius - 5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryTextColor,
                ),
              ),
              const SizedBox(height: 4),
              // DESCRIPTION
              Text(
                location,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  color: kSecondaryTextColor,
                ),
              ),
              const SizedBox(height: 6),
              // PRICE
              Row(
                children: [
                  Text(
                    currentPrice.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryTextColor,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    previousPrice.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 12,
                      color: kSecondaryTextColor,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (amountLeft <= lowStockAmount)
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(kBorderRadius - 10),
              ),
              child: Text(
                '${amountLeft.toString()} Left',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
