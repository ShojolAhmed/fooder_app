import 'package:flutter/material.dart';
import 'package:fooder_app/main.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/home/grid_row.dart';
import 'package:fooder_app/widgets/home/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // TOP PART:
          // header texts and grid items
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, User',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryTextColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'What do you want to eat?',
                  style: TextStyle(
                    fontSize: 16,
                    color: kSecondaryTextColor,
                  ),
                ),
                SizedBox(height: 16),
                GridRow(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // PROMO PART:
          // heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              children: [
                const Text(
                  'Today\'s Promo',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryTextColor,
                  ),
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: kPrimaryColor),
                  onPressed: () {},
                  child: const Text('See all'),
                ),
              ],
            ),
          ),
          // slider
          SizedBox(
            height: 350,
            child: PromoSlider(promoItems: promoItemsList),
          )
        ],
      ),
    );
  }
}
