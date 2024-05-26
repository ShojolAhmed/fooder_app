import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.rowWidth,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final double rowWidth;
  final IconData? icon;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton.filled(
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(rowWidth * .065),
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(kBorderRadius),
              ),
            ),
          ),
          onPressed: onPressed,
          icon: Icon(icon),
          color: kPrimaryColor,
          iconSize: rowWidth * .1,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: kSecondaryTextColor,
          ),
        )
      ],
    );
  }
}
