import 'package:flutter/material.dart';
import 'package:fooder_app/model/food.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/add_to_favorite_button.dart';

class ItemFood extends StatelessWidget {
  const ItemFood({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Image.network(
                    food.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  if (food.amountLeft < lowStockAmount)
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius:
                              BorderRadius.circular(kBorderRadius - 10),
                        ),
                        child: Text(
                          '${food.amountLeft.toString()} left',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: (size.width < 600) ? 130 : 400,
                          child: Text(
                            food.name,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const AddToFavoriteButton(),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          food.currentPrice.toStringAsFixed(2),
                          style: const TextStyle(
                            color: kSecondaryTextColor,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          food.previousPrice.toStringAsFixed(2),
                          style: TextStyle(
                            color: kSecondaryTextColor.withOpacity(.7),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: kSecondaryColor,
                          child: Icon(
                            Icons.percent,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          food.deliveryFee == 0
                              ? 'Free Delivery'
                              : 'Delivery fee Tk ${food.deliveryFee.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: kSecondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            label: const Text('Add'),
            icon: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
