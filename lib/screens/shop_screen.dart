import 'package:flutter/material.dart';
import 'package:fooder_app/data/dummy_data.dart';
import 'package:fooder_app/model/food_and_restaurant.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/item_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  List<FoodAndRestaurant> generateAllItemsList() {
    final List<FoodAndRestaurant> items = [];
    for (var food in dummyFoods) {
      for (var restaurant in dummyRestaurants) {
        if (restaurant.id == food.restaurantId) {
          items.add(FoodAndRestaurant(
            food: food,
            restaurant: restaurant,
          ));
        }
      }
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    final List<FoodAndRestaurant> allItems = generateAllItemsList();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: ListView.builder(
          itemCount: allItems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                child: Text(
                  'Get your delicious meals.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryTextColor,
                  ),
                ),
              );
            } else {
              return ItemCard(item: allItems[index - 1]);
            }
          },
        ),
      ),
    );
  }
}
