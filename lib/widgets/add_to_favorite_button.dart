import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';

class AddToFavoriteButton extends StatelessWidget {
  const AddToFavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: IconButton.filled(
        style: IconButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () {},
        icon: const Icon(Icons.favorite_border),
        color: kPrimaryColor,
      ),
    );
  }
}
