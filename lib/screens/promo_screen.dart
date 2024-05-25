import 'package:flutter/material.dart';
import 'package:fooder_app/main.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/promo_screen/filter_button.dart';
import 'package:fooder_app/widgets/promo_screen/promo_item_card.dart';

class PromoScreen extends StatelessWidget {
  const PromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Today\'s Promo'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: kHorizontalPadding),
                  FilterButton(
                    label: 'Filter',
                    icon: Icons.tune,
                    onPressed: () {},
                  ),
                  FilterButton(
                    label: 'Nearby',
                    icon: Icons.location_on_outlined,
                    onPressed: () {},
                  ),
                  FilterButton(
                    label: 'Above 4.5',
                    icon: Icons.star_border_outlined,
                    onPressed: () {},
                  ),
                  FilterButton(
                    label: 'Checkout',
                    icon: Icons.sell_outlined,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                top: kHorizontalPadding,
                left: kHorizontalPadding,
                right: kHorizontalPadding,
              ),
              itemCount: promoItemsList.length,
              itemBuilder: (ctx, index) {
                return PromoItemCard(
                  item: promoItemsList[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
