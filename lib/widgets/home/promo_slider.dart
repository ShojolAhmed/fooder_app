import 'package:flutter/material.dart';
import 'package:fooder_app/model/food_and_restaurant.dart';
import 'package:fooder_app/widgets/home/promo_item.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.promoItems,
  });

  final List<FoodAndRestaurant> promoItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (ctx, index) {
        return PromoItem(
          promoItem: promoItems[index],
        );
      },
    );
  }
}
