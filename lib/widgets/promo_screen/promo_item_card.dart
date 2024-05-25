import 'package:flutter/material.dart';
import 'package:fooder_app/model/food_and_restaurant.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/promo_screen/promo_item_food.dart';

class PromoItemCard extends StatelessWidget {
  const PromoItemCard({
    super.key,
    required this.item,
  });

  final FoodAndRestaurant item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kHorizontalPadding),
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kBorderRadius)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                item.restaurant.name,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star_border_outlined,
                    color: kSecondaryColor,
                  ),
                  const SizedBox(width: 6),
                  Text((item.restaurant.rating == 0)
                      ? 'Not Rated'
                      : item.restaurant.rating.toString()),
                ],
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text(
                '${item.restaurant.areaLocation}, ${item.restaurant.cityLocation}',
                style: const TextStyle(color: kSecondaryTextColor),
              ),
              const Spacer(),
              Text(
                '${item.restaurant.distance.toString()} km',
                style: const TextStyle(color: kSecondaryTextColor),
              )
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kSecondaryTextColor.withOpacity(.3),
            ),
          ),
          PromoItemFood(food: item.food),
        ],
      ),
    );
  }
}
