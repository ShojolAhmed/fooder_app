import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.rowWidth,
    required this.icon,
    required this.label,
    required this.onPress,
  });

  final double rowWidth;
  final IconData? icon;
  final String label;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(kBorderRadius),
          onTap: onPress,
          child: Container(
            height: rowWidth * .23,
            width: rowWidth * .23,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Icon(
              icon,
              size: rowWidth * .1,
              color: kPrimaryColor,
            ),
          ),
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
