import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fooder_app/data/dummy_data.dart';
import 'package:fooder_app/model/food_and_restaurant.dart';
import 'package:fooder_app/screens/home_screen.dart';
import 'package:fooder_app/screens/search_screen.dart';
import 'package:fooder_app/screens/shop_screen.dart';
import 'package:fooder_app/screens/user_screen.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/styles.dart';
import 'package:fooder_app/widgets/navigation_bar/navigation_bar_button.dart';

final List<FoodAndRestaurant> foodAndRestaurantList = [];
final List<FoodAndRestaurant> promoItemsList = [];
void generateFoodAndRestaurantList() {
  for (var food in dummyFoods) {
    for (var restaurant in dummyRestaurants) {
      if (restaurant.id == food.restaurantId) {
        foodAndRestaurantList.add(FoodAndRestaurant(
          food: food,
          restaurant: restaurant,
        ));
      }
    }
  }
}

List<FoodAndRestaurant> generatePromoItems() {
  for (var i = 0; i < 5; i++) {
    promoItemsList.add(
        foodAndRestaurantList[Random().nextInt(foodAndRestaurantList.length)]);
  }
  return promoItemsList;
}

void main() {
  generateFoodAndRestaurantList();
  generatePromoItems();
  runApp(const App());
}

const List<Widget> screens = [
  HomeScreen(),
  ShopScreen(),
  SearchScreen(),
  UserScreen(),
];

int index = 0;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: _createBottomNavigationBar(),
        body: screens[index],
      ),
    );
  }

  Card _createBottomNavigationBar() {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        color: Colors.white,
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarButton(
              icon: Icons.home_outlined,
              iconColor: (index == 0) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.shopping_bag_outlined,
              iconColor: (index == 1) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.search,
              iconColor: (index == 2) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.person_outline,
              iconColor: (index == 3) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
