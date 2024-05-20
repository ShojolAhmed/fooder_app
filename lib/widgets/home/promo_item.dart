import 'package:flutter/material.dart';
import 'package:fooder_app/model/food_and_restaurant.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/home/promo_item_info.dart';
import 'package:transparent_image/transparent_image.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({
    super.key,
    required this.promoItem,
  });

  final FoodAndRestaurant promoItem;

  @override
  Widget build(BuildContext context) {
    final food = promoItem.food;
    final restaurant = promoItem.restaurant;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: InkWell(
        onTap: () {
          print('promo slider');
        },
        child: Stack(
          children: [
            FadeInImage(
              height: double.infinity,
              width: 300,
              fit: BoxFit.cover,
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(food.imageUrl),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: PromoItemInfo(
                  title: food.name,
                  location: '${restaurant.name}, ${restaurant.cityLocation}',
                  currentPrice: food.currentPrice,
                  previousPrice: food.previousPrice,
                  amountLeft: food.amountLeft),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
