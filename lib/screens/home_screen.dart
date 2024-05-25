import 'package:flutter/material.dart';
import 'package:fooder_app/main.dart';
import 'package:fooder_app/screens/promo_screen.dart';
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
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: kHorizontalPadding,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    constraints: BoxConstraints(maxWidth: size.width * .6),
                    decoration: BoxDecoration(
                      color: kTertiaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      'Uttar Khan Thana, Dhaka',
                      style: TextStyle(
                        fontSize: 14,
                        color: kSecondaryTextColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print('Notification Button');
                    },
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundColor: kPrimaryColor,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: kOnPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TOP PART:
            // header texts and grid items
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const PromoScreen();
                          },
                        ),
                      );
                    },
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
      ),
    );
  }
}
