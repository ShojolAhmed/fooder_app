import 'package:flutter/material.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/home/promo_item.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(width: kHorizontalPadding),
        PromoItem(
          title: 'Spaghetti with Tomato Sauce',
          description: 'Random text about this food',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
          currentPrice: 8.99,
          previousPrice: 11.99,
          amountLeft: 5,
        ),
        SizedBox(width: 16),
        PromoItem(
          title: 'Toast Hawaii',
          description: 'Random text about this food',
          imageUrl:
              'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
          currentPrice: 7.25,
          previousPrice: 10.25,
          amountLeft: 7,
        ),
        SizedBox(width: 16),
        PromoItem(
          title: 'Wiener Schnitzel',
          description: 'Random text about this food',
          imageUrl:
              'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
          currentPrice: 27.50,
          previousPrice: 39.99,
          amountLeft: 99,
        ),
        SizedBox(width: 16),
        PromoItem(
          title: 'Salad with Smoked Salmon',
          description: 'Random text about this food',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
          currentPrice: 28.99,
          previousPrice: 41.80,
          amountLeft: 80,
        ),
        SizedBox(width: kHorizontalPadding),
      ],
    );
  }
}
