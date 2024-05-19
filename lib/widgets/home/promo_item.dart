import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/widgets/home/promo_item_info.dart';
import 'package:transparent_image/transparent_image.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.currentPrice,
    required this.previousPrice,
    required this.amountLeft,
  });

  final String title;
  final String description;
  final String imageUrl;
  final double currentPrice;
  final double previousPrice;
  final int amountLeft;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.symmetric(vertical: 12),
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
              image: NetworkImage(imageUrl),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: PromoItemInfo(
                  title: title,
                  description: description,
                  currentPrice: currentPrice,
                  previousPrice: previousPrice,
                  amountLeft: amountLeft),
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
